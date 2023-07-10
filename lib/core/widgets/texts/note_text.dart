import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class NoteTextWidget extends StatelessWidget {
  final String text;
  const NoteTextWidget({super.key, required this.text, required this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 5,
            child: Text(
              text, //
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: color ?? AppColors.orange,
                  fontSize: AppFontSize.hintText,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Cairo'),
            )),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}
