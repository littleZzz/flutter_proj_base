import 'package:package_info_plus/package_info_plus.dart';

///项目包信息
///
class PackageInfoUtils {
  static PackageInfo? _packageInfo;

  ///初始化
  static Future init() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }

  static String getVersion() {
    return _packageInfo?.version ?? '';
  }

  static String getAppName() {
    return _packageInfo?.appName ?? '';
  }

  static String getPackageName() {
    return _packageInfo?.packageName ?? '';
  }

  static String getBuildNumber() {
    return _packageInfo?.buildNumber ?? '';
  }
}
