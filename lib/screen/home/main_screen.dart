
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_proj_base/components/hoo_text.dart';
import 'package:flutter_proj_base/net/apis/login_api.dart';
import 'package:flutter_proj_base/net/networking.dart';

///主页面
class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HooText(text: "这个是主页面", color: Colors.black),
            TextButton(
              onPressed: () {
                try {
                  Networking.request(
                      LoginAPI(email: "email@email.com", password: "123456"));

                  Networking.request(RateListAPI());
                } on Exception catch (e) {
                  e.toString();
                }
              },
              child: HooText(text: "跳转", color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                // var orderListEntity = OrderListEntity.fromJson(orderlistmap);
                // var data = orderListEntity.data;
                // Log.e(orderListEntity.toString());
              },
              child: HooText(text: "解析json", color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
