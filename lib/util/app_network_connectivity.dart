import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

/// 监听网络状态
///
class AppNetworkConnectivity {
  // 单例方法
  factory AppNetworkConnectivity() => _getInstance();

  static AppNetworkConnectivity get instance => _getInstance();

  static AppNetworkConnectivity? _instance;

  AppNetworkConnectivity._internal();

  static AppNetworkConnectivity _getInstance() {
    _instance ??= AppNetworkConnectivity._internal();
    return _instance!;
  }

  //监听订阅
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  /// 开始监听网络状态
  void startMonitor({Function(List<ConnectivityResult> event)? onCallback}) {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(onCallback);
  }

  /// 停止监听网络状态
  void stopMonitor() {
    _connectivitySubscription.cancel();
  }

  /// 检查网络状态
  Future<List<ConnectivityResult>> checkConnectivity() async {
    return await _connectivity.checkConnectivity();
  }
}
