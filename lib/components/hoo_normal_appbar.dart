// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_new_proj/components/hoo_text.dart';

///仅包含返回按钮的 通用appbar
class HooNormalAppbar extends StatelessWidget implements PreferredSizeWidget {
  String titleStr;
  VoidCallback? onPressed;
  @override
  final Size preferredSize;

  HooNormalAppbar({Key? key, this.titleStr = "", this.onPressed})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0, //禁止状态栏变色
      leading: IconButton(
        iconSize: 16,
        // onPressed: onPressed ?? () => AppRouter.of(context).pop(),
        onPressed: onPressed,
        icon: const Icon(Icons.arrow_back_ios),
        color: const Color(0xff7D8FB3),
      ),
      title: HooText(
        text: titleStr,
        color: const Color(0xff131926),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
