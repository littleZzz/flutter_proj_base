import 'package:permission_handler/permission_handler.dart';

///权限帮助类
///
class PermissionHelper {
  /// 请求单个权限
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status == PermissionStatus.granted;
  }

  /// 批量请求多个权限
  static Future<Map<Permission, PermissionStatus>> requestPermissions(
      List<Permission> permissions) async {
    return await permissions.request();
  }

  /// 检查单个权限是否授予
  static Future<bool> checkPermission(Permission permission) async {
    final status = await permission.status;
    return status == PermissionStatus.granted;
  }

  /// 检查多个权限是否授予
  static Future<Map<Permission, bool>> checkPermissions(
      List<Permission> permissions) async {
    Map<Permission, bool> results = {};
    for (var permission in permissions) {
      final status = await permission.status;
      results[permission] = status == PermissionStatus.granted;
    }
    return results;
  }

  /// 打开应用程序设置
  static Future<void> openAppSettings() async {
    await openAppSettings();
  }

  /// 检查权限是否永久拒绝（用户选择了 "不再询问"）
  static Future<bool> isPermissionPermanentlyDenied(
      Permission permission) async {
    return await permission.isPermanentlyDenied;
  }
}
