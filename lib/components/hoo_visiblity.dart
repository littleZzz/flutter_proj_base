// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

///封装visiblity控件
///
class HooVisiblity extends StatelessWidget {
  Widget child;
  bool visible;
  bool isHoldSpace;

  HooVisiblity(
      {super.key,
      required this.child,
      this.visible = false,
      this.isHoldSpace = false});

  @override
  Widget build(BuildContext context) {
    return isHoldSpace
        ? Visibility(
            maintainState: isHoldSpace,
            maintainAnimation: isHoldSpace,
            maintainSize: isHoldSpace,
            visible: visible,
            child: child,
          )
        : (visible ? child : const SizedBox());
  }
}
