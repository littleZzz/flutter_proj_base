import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///checkBox padding可以自设定
// ignore: must_be_immutable
class HooCheckBox extends ConsumerWidget {
  bool value;
  double size;
  final ValueChanged<bool> onChanged;
  EdgeInsetsGeometry? padding;

  HooCheckBox({
    super.key,
    this.value = false,
    this.size = 16,
    required this.onChanged,
    this.padding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onChanged.call(!value);
      },
      child: Container(
        padding: padding,
        // color: Colors.red,
        child: SizedBox(
          width: size,
          height: size,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            side: const BorderSide(color: Color(0xffDFE3EB)),
            value: value,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(color: Color(0xffDFE3EB)),
            ),
            fillColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return const Color(0xffF0700C);
                }
                return Colors.white;
              },
            ),
            onChanged: (value) {
              onChanged.call(value ?? false);
            },
          ),
        ),
      ),
    );
  }
}
