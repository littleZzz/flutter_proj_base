// 自动创建，自动更新，不要修改这个文件，不要将其加入 git 仓库!!!!

import 'dart:io';

class Environment {
  static bool production = false;
  static String get apiEntry =>
      production ? 'https://api.hoobuy.com' : 'https://dev.api.hoobuy.com';
  static String get webEntry =>
      production ? 'https://hoobuy.com' : 'https://dev-d8okw12xt.hoobuy.com';

  /// 图片上传接口
  static String get uploadLocalMediaEntry => production
      ? 'https://api.scm.hoobuy.com/scm'
      : 'https://devapi.scm.hoobuy.com/scm';

  static String get signKey => production
      ? (Platform.isIOS
          ? 'AA8F16D1-686D-4190-9B66-C97927AC1186'
          : '59AE34F6-5FBD-49D6-9323-938C3DF8DDCE')
      : (Platform.isIOS
          ? '48056E6F-4B22-4BE6-9BBB-C24CB4574ED6'
          : 'D0CA4A82-8461-4DE5-8399-54D06BB3347C');

  static String get signVersion => production
      ? (Platform.isIOS
          ? 'hoobuy-production-ios-1.0'
          : 'hoobuy-production-android-1.0')
      : (Platform.isIOS ? 'hoobuy-dev-ios-1.0' : 'hoobuy-dev-android-1.0');
}
