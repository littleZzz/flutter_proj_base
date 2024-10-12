// import 'dart:convert';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_new_proj/net/env.dart';
import 'package:flutter_new_proj/util/app_network_connectivity.dart';
import 'package:flutter_new_proj/util/app_storage.dart';
import 'package:flutter_new_proj/util/notification_center.dart';
import 'package:flutter_new_proj/util/package_info_util.dart';
import 'package:uuid/uuid.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = AppStorage.instance.getToken();
    //登录token锚点
    if (token != null && token.isNotEmpty) {
      options.headers.addAll({'x-token': token});
    }
    var nonce = const Uuid().v4();
    var sign = _generateMd5(nonce + Environment.signKey);
    var firebaseInstanceId = AppStorage.instance.getFirebaseInstanceId();
    var platform =
        Platform.isAndroid ? "android" : (Platform.isIOS ? "ios" : "");

    options.headers.addAll({
      'x-nonce': nonce,
      'x-version': Environment.signVersion,
      'x-client-id': firebaseInstanceId,
      'x-signature': sign,
      'x-platform': platform,
      'language': AppStorage.instance.getLanguage(),
      'x-app-version': PackageInfoUtils.getVersion(),
    });

    //TODO 返回connectivityResult  类型有变化
    AppNetworkConnectivity.instance
        .checkConnectivity()
        .then((connectivityResult) {
      if (connectivityResult == ConnectivityResult.none) {
        // Device not connected to any network.
        handler.reject(DioException(
            requestOptions: options,
            error: 'Device not connected to any network'));
      } else {
        handler.next(options);
      }
    });
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is Map) {
      final code = response.data['code'];
      if (code == 'ECONNABORTED') /* 超时或终止 */ {
        response.data['code'] = 408;
      } else if (code is String) {
        response.data['code'] = 500;
      } else if (response.data['code'] != 0) {
        if (code >= 400 && code < 500) {
          if (code == 401 || code == 402) {
            //token过期 发送Token失效通知
            NotificationCenter.eventBus.fire(TokenInvalidEvent());
          }
        } else if (code >= 500) {
          // Unified handling
          String? msg = response.data['msg'];
          response.data['msg'] =
              msg ?? 'The network is busy, please try again later!';
        }
      }
    }
    handler.next(response);
  }

  String _generateMd5(String data) {
    var content = const Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return digest.toString();
  }
}
