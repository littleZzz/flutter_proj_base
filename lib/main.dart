import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_proj_base/screen/home/main_screen.dart';
import 'package:flutter_proj_base/util/device_info_util.dart';
import 'package:flutter_proj_base/util/package_info_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 确保 Flutter 绑定已初始化

  ///设备信息初始化
  PackageInfoUtils.init();
  DeviceInfoUtils.init();

  _runApp(const MyApp());
}

_runApp(Widget app) async {
  // 禁止手机横屏
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp, // 竖屏 Portrait 模式
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark); // 设置状态栏颜色
  BindingBase.debugZoneErrorsAreFatal = false; // 设置警告为致命错误
  // if (!Environment.production) {
  //   PluginManager.instance // 注册插件
  //     ..register(DioInspector(dio: Networking.getDio()))
  //     ..register(const DeviceInfoPanel())
  //     ..register(Console()); // 传入你的 Dio 实例
  //   // flutter_ume 0.3.0 版本之后
  //   runApp(
  //     ProviderScope(
  //       child: UMEWidget(
  //         enable: true,
  //         child: app,
  //       ),
  //     ),
  //   ); // 初始化
  // } else {
  runApp(ProviderScope(child: app));
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
