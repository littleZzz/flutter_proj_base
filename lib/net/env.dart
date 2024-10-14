// 自动创建，自动更新，不要修改这个文件，不要将其加入 git 仓库!!!!

import 'dart:io';

class Environment {
  static bool production = false;
  static String get apiEntry => production ? '' : 'https://dev.api.hoobuy.com';
  static String get webEntry =>
      production ? '' : 'https://dev-d8okw12xt.hoobuy.com';

  /// 图片上传接口
  static String get uploadLocalMediaEntry =>
      production ? 'h' : 'https://devapi.scm.hoobuy.com/scm';

  static String get signKey => production
      ? (Platform.isIOS ? 'A86' : '59AE3E')
      : (Platform.isIOS ? '480574ED6' : 'D0CA4ABB3347C');

  static String get signVersion => production
      ? (Platform.isIOS ? 'hoob' : 'hoob')
      : (Platform.isIOS ? 'hoo' : 'hoob');
}
