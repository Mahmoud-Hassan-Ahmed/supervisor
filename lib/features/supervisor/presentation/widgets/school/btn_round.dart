import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/font_size.dart';

class BtnRoundWithtitle extends StatelessWidget {
  const BtnRoundWithtitle(
      {super.key,
      required this.bg,
      required this.lable,
      required this.textColor,
      required this.onTap});
  final Color bg;
  final String lable;
  final Color textColor;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: ElevatedButton(
        onPressed: () {
          onTap.call();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: bg,
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        child: Text(
          lable,
          style:
              TextStyle(fontSize: AppFontSize.smallText + 1, color: textColor),
        ),
      ),
    );
  }
}
