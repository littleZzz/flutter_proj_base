// 注册邮箱前置校验
import '../api.dart';

// 登录
class LoginAPI extends API {
  LoginAPI({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;

  @override
  Map<String, dynamic> get parameters {
    return {
      "platform": "email",
      "email": email,
      "password": password,
    };
  }

  @override
  String get path => '/hoobuy_account/pub/login';
}

class RateListAPI extends API {
  RateListAPI();

  @override
  String get path => '/hoobuy_wallet/pub/rate/list';
}
