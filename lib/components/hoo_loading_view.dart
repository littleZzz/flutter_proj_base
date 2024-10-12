import 'package:flutter/material.dart';

class HooLoadingView extends StatelessWidget {
  const HooLoadingView({super.key, this.size = 36});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: const CircularProgressIndicator(
          color: Color(0xffF0700C),
          strokeWidth: 2,
        ),
      ),
    );
  }
}
