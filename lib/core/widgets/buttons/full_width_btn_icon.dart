import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class FullWidthBtnIcon extends StatelessWidget {
  final String label;
  final Color? bg;
  final Color? textColor;
  final Function? callBack;
  final String icon;
  const FullWidthBtnIcon(
      {super.key,
      required this.label,
      required this.callBack,
      this.bg,
      this.textColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
          icon: SvgPicture.asset(icon),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(8),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(bg ?? AppColors.orange),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
          ),
          onPressed: callBack != null
              ? () {
                  callBack!.call();
                }
              : null,
          label: Text(
            label,
            style: TextStyle(
                fontSize: AppFontSize.hintFormField,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
                color: textColor ?? Colors.white),
          )),
    );
  }
}
