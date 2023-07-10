import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/core/widgets/buttons/full_width_btn_icon.dart';

class BodysheetDownload extends StatelessWidget {
  const BodysheetDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              'تعديل بروفايل الطالب',
              style: TextStyle(
                  fontSize: AppFontSize.hintFormField + 2,
                  fontFamily: 'Cairo',
                  color: AppColors.smallText),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: FullWidthBtnIcon(
                  label: 'تحميل تقرير رحلات الذهاب',
                  callBack: () {},
                  icon: 'assets/icons/download_w.svg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: FullWidthBtnIcon(
                  bg: AppColors.smallTextColor,
                  label: 'تحميل تقرير رحلات العودة',
                  callBack: () {},
                  icon: 'assets/icons/download_w.svg'),
            )
          ],
        ),
      ),
    );
  }
}
