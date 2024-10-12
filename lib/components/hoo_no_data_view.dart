import 'package:flutter/material.dart';

class HooNoDataView extends StatelessWidget {
  const HooNoDataView(
      {super.key,
      this.iconPath,
      this.desc,
      this.size = 160,
      this.topGap = 40.0});
  final String? iconPath;
  final String? desc;
  final double size;
  final double topGap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: topGap),
        Image.asset(iconPath ?? "", width: 160),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            desc ?? "No Data",
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7D8FB3)),
          ),
        ),
      ],
    );
  }
}
