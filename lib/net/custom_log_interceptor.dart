import 'package:dio/dio.dart';
import 'package:flutter_new_proj/util/log/log.dart';
import 'env.dart';

/// 网络日志前缀
const String netLogUrlTag = '-URL-';
const String netLogHeadTag = '-Head';
const String netLogParamsTag = '-Req-';
const String netLogResponseTag = '-Res-';
const String netLogErrorTag = '-ERR-';
const String netLogResHeadTag = 'RHead';

/// @Title   自定义网络日志拦截器
class CustomLogInterceptor extends Interceptor {
  /// Print request URL
  bool requestUrl;

  /// Print request header
  bool requestHeader;

  /// Print request data
  bool requestBody;

  /// Print response body
  bool responseBody;

  /// Print response header
  bool responseHeader;

  /// Print error message
  bool error;

  /// 是否将日志按照json打印
  bool isLogFormatJson = true;

  CustomLogInterceptor(
      {this.requestUrl = true,
      this.requestHeader = false,
      this.requestBody = true,
      this.responseHeader = false,
      this.responseBody = true,
      this.error = true});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    //LogUtil.d("在响应之前的拦截信息");
    _printResponse(response);
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (error) _printError(err);
    handler.next(err);
  }

  _printResponse(Response response) {
    if (requestUrl) {
      Log.d('${response.requestOptions.baseUrl}${response.requestOptions.path}',
          tag: netLogUrlTag);
    }
    if (requestHeader) {
      Log.d(response.requestOptions.headers,
          tag: netLogHeadTag, isJson: isLogFormatJson);
    }
    try {
      var params = response.requestOptions.data ??
          response.requestOptions.queryParameters;
      if (requestBody &&
          null != params &&
          (params is Map) &&
          params.isNotEmpty) {
        Log.d(params, tag: netLogParamsTag, isJson: isLogFormatJson);
      }
    } catch (_) {}
    if (responseHeader) {
      Log.d(response.headers.map,
          tag: netLogResHeadTag, isJson: isLogFormatJson);
    }
    if (responseBody) {
      Log.d(response.data, tag: netLogResponseTag, isJson: isLogFormatJson);
    }
  }

  _printError(DioException e) {
    if (!error) return;
    Log.e('${Environment.apiEntry}${e.requestOptions.path}', tag: netLogUrlTag);
    try {
      var params = e.requestOptions.data ?? e.requestOptions.queryParameters;
      if (requestBody &&
          null != params &&
          (params is Map) &&
          params.isNotEmpty) {
        Log.e(params, tag: netLogParamsTag, isJson: isLogFormatJson);
      }
    } catch (_) {}
    Log.e(e.message ?? "", tag: netLogErrorTag);
  }
}
