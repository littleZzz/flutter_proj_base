import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_new_proj/util/package_info_util.dart';

///设备信息
///
class DeviceInfoUtils {
  static AndroidDeviceInfo? androidInfo;
  static IosDeviceInfo? iosInfo;

  ///初始化
  static Future init() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      androidInfo = await deviceInfoPlugin.androidInfo;
    } else if (Platform.isIOS) {
      iosInfo = await deviceInfoPlugin.iosInfo;
    }
  }

  static String getUserAgent() {
    String userAgent =
        "${PackageInfoUtils.getAppName()}/${PackageInfoUtils.getVersion()}(${PackageInfoUtils.getBuildNumber()})";
    if (Platform.isAndroid && androidInfo != null) {
      userAgent +=
          " (Android ${androidInfo!.version.release}; ${androidInfo!.brand} ${androidInfo!.model})";
    } else if (Platform.isIOS && iosInfo != null) {
      userAgent +=
          " (${iosInfo!.systemName} ${iosInfo!.systemVersion}; ${iosInfo!.model})";
    }
    return userAgent;
  }
}
