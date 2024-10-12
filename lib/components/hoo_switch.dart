import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///switch 控件
// ignore: must_be_immutable
class HooSwitch extends ConsumerStatefulWidget {
  double? scale; //switch 通过scale 控制
  double? width; //宽高限制布局大小 来控制点控范围  控件大小通过scale控制
  double? heigth;
  ValueChanged<bool>? onChanged;
  AlignmentGeometry? alignment;
  Color? activeColor;

  HooSwitch({
    super.key,
    this.width = 34,
    this.heigth = 20,
    this.scale = 0.65, //0.65 height=20
    this.onChanged,
    this.alignment,
    this.activeColor,
  });

  @override
  ConsumerState createState() => _HooSwitchState();
}

class _HooSwitchState extends ConsumerState<HooSwitch> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() => check = !check); //控制
        if (widget.onChanged != null) {
          widget.onChanged?.call(check);
        }
      },
      child: Container(
        // color: Colors.red,
        width: widget.width,
        height: widget.heigth,
        child: Transform.scale(
          scale: widget.scale,
          alignment: widget.alignment,
          child: Switch(
            value: check,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            inactiveThumbColor: const Color(0xffFFFFFF),
            inactiveTrackColor: const Color(0xffDFE3EB),
            activeColor: widget.activeColor ?? const Color(0xffF0700C),
            trackOutlineColor: MaterialStateProperty.resolveWith(
              (states) => Colors.transparent,
            ),
            onChanged: (value) {
              setState(() => check = value); //控制
              if (widget.onChanged != null) {
                widget.onChanged?.call(check);
              }
            },
          ),
        ),
      ),
    );
  }
}
