import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_proj_base/components/hoo_loading.dart';
import 'package:flutter_proj_base/net/api.dart';
import 'package:flutter_proj_base/net/custom_log_interceptor.dart';
import 'package:flutter_proj_base/net/env.dart';
import 'package:flutter_proj_base/net/header_interceptor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:system_proxy/system_proxy.dart';


bool proxyIsOpen = true; //是否需要代理

class Networking {
  // Global options
  static final cacheOptions = CacheOptions(
    store: MemCacheStore(),
    maxStale: const Duration(days: 7),
  );

  static final _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      baseUrl: Environment.apiEntry,
    ),
  )..interceptors.addAll([
      HeaderInterceptor(),
      CustomLogInterceptor(),
      DioCacheInterceptor(options: cacheOptions)
    ]);

  static Dio getDio() {
    return _dio;
  }

  static final _uploadDio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 1200),
      receiveTimeout: const Duration(seconds: 1200),
      baseUrl: Environment.uploadLocalMediaEntry,
    ),
  )..interceptors.addAll([
      HeaderInterceptor(),
      CustomLogInterceptor(),
      DioCacheInterceptor(options: cacheOptions)
    ]);

  ///是否已经设置代理
  static bool _initProxy = false;

  static initProxy() async {
    if (Networking._initProxy) return;
    Networking._initProxy = true;
    String proxyIP = '';
    Map<String, String>? systemProxy = await SystemProxy.getProxySettings();
    if (systemProxy?['port']?.isNotEmpty ?? false) {
      proxyIP = '${systemProxy?['host']}:${systemProxy?['port']}';
    }
    if (proxyIP.isEmpty) return true;

    (Networking._dio.httpClientAdapter as IOHttpClientAdapter)
        .createHttpClient = () {
      HttpClient client = HttpClient();
      if (proxyIP.contains(":")) {
        client.findProxy = (uri) => "PROXY $proxyIP";
      } else {
        client.findProxy = (uri) => "PROXY $proxyIP:8888";
      }
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  static Future<Map<String, dynamic>> request<T extends TargetType>(
      T targetType,
      {bool isShowLoadingDialog = false,
      bool isCache = false, // 是否开启缓存
      // 缓存强制刷新刷新策略（先请求接口，如果请求失败或者没网则使用缓存）
      bool forceRefresh = true,
      // 缓存清除的时间（如果缓存时间cacheMaxAge已过，cacheMaxStale未过时，当网络请求失败时会使用缓存，过期清除）
      Nullable<Duration>? cacheMaxStale,
      CancelToken? cancelToken}) async {
    if (isShowLoadingDialog) {
      if (!HooLoading.isLoadingShowing) HooLoading.showLoading();
    }

    try {
      if (!Environment.production && proxyIsOpen) {
        await initProxy();
      }
      final Map<String, dynamic> parameters = Map.of(targetType.parameters);

      Options cacheOption = cacheOptions
          .copyWith(
              maxStale: cacheMaxStale,
              policy: forceRefresh
                  ? CachePolicy.refreshForceCache
                  : CachePolicy.refresh)
          .toOptions();

      Response rsp;

      if (targetType.method == HttpMethod.get) {
        rsp = await _dio.get(targetType.path,
            queryParameters: parameters,
            cancelToken: cancelToken,
            options: isCache ? cacheOption : null);
      } else {
        rsp = await _dio.post(targetType.path,
            data: targetType.path == "/pub/login"
                ? FormData.fromMap(parameters)
                : parameters,
            cancelToken: cancelToken,
            options: isCache ? cacheOption : null);
      }

      if (rsp.data['code'] == 0) {
        if (isShowLoadingDialog) HooLoading.dismissLoading();
        return rsp.data;
      }
      throw APIException.fromResponse(rsp.data);
    } catch (e) {
      if (isShowLoadingDialog) HooLoading.dismissLoading();
      if (e is DioException) {
        throw APIException.create(e);
      } else if (e is APIException) {
        rethrow;
      } else {
        throw APIException(-1, e.toString());
      }
    }
  }

  static Future<String?> downloadWithUrl(String downloadUrl,
      {String? fileName, ProgressCallback? onReceiveProgress}) async {
    String? savePath = await _getSavePath(
        fileName ?? DateTime.now().millisecondsSinceEpoch.toString());
    try {
      await _dio.download(downloadUrl, savePath,
          onReceiveProgress: onReceiveProgress);
      return savePath;
    } catch (e) {
      if (e is DioException) throw APIException.create(e);
      throw APIException(-1, e.toString());
    }
  }

  ///数字商品 [CancelToken]
  static CancelToken? _uploadCancelRequest;

  ///取消上传
  static cancelUpload() {
    _uploadCancelRequest?.cancel('Cancel image upload ⚠️');
  }

  static Future<Map<String, dynamic>> upload(File data,
      {bool isShowLoadingDialog = false}) async {
    if (isShowLoadingDialog) {
      if (!HooLoading.isLoadingShowing) HooLoading.showLoading();
    }
    try {
      String path = data.path;
      var name = path.substring(path.lastIndexOf("/") + 1, path.length);
      var nameWithoutExtension = name.substring(0, name.lastIndexOf("."));
      var formatType = name.substring(name.lastIndexOf("."));
      FormData formData = FormData.fromMap(
        {"file": await MultipartFile.fromFile(path, filename: name)},
      );

      if (data.lengthSync() > 3 * 1024 * 1024 &&
          (formatType == ".jpg" ||
              formatType == ".jpeg" ||
              formatType == ".png")) {
        debugPrint("=========压缩前图片大小：${data.lengthSync()}");
        // 只压缩jpg，jpeg，png图
        var targetPath =
            path.replaceAll(name, "${nameWithoutExtension}_temp$formatType");
        final compressedFile = await FlutterImageCompress.compressAndGetFile(
          data.absolute.path,
          targetPath,
          quality: 80,
          format:
              formatType == ".png" ? CompressFormat.png : CompressFormat.jpeg,
        );
        if (compressedFile != null) {
          formData = FormData.fromMap(
            {
              "file": await MultipartFile.fromFile(compressedFile.path,
                  filename: name)
            },
          );
          debugPrint("=========压缩后图片大小：${File(targetPath).lengthSync()}");
        }
      }

      Response rsp = await _uploadDio.post(
        "/pub/pad/file/upload",
        data: formData,
        cancelToken: _uploadCancelRequest,
      );
      if (rsp.data['code'] == 0) {
        if (isShowLoadingDialog) HooLoading.dismissLoading();
        return rsp.data;
      }
      throw APIException.fromResponse(rsp.data);
    } catch (e) {
      if (isShowLoadingDialog) HooLoading.dismissLoading();
      if (e is DioException) throw APIException.create(e);
      throw APIException(-1, e.toString());
    }
  }

  static Future<String?> _getSavePath(String fileName) async {
    final directory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    if (directory == null) return null;
    return '${directory.path}/$fileName';
  }
}

class APIException implements Exception {
  final int code;
  final String message;
  final dynamic extra;

  APIException(this.code, this.message, {this.extra});

  factory APIException.fromResponse(Map<String, dynamic> response) {
    int code = response['code'];
    var message = response['msg'];
    var extra = response['data'];
    return APIException(code, message, extra: extra);
  }

  factory APIException.create(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return APIException(-999, "Cancel");
      case DioExceptionType.connectionError:
        return APIException(-1, "Connection error");
      case DioExceptionType.connectionTimeout:
        return APIException(-1, "Connection timeout");
      case DioExceptionType.sendTimeout:
        return APIException(-1, "Send timeout");
      case DioExceptionType.receiveTimeout:
        return APIException(-1, "Receive timeout");
      case DioExceptionType.badResponse:
        {
          if (error.response == null) {
            return APIException(-1, "Response is empty!");
          }

          int errCode = error.response!.statusCode ?? -1;
          String statusMessage = error.response!.statusMessage ?? '';
          return APIException(errCode, statusMessage);
        }
      case DioExceptionType.badCertificate:
        return APIException(-1, 'Bad certificate');
      case DioExceptionType.unknown:
        return APIException(-1, 'unavailable');
    }
  }

  @override
  String toString() => "$code: $message";
}
