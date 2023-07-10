import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/card_body_sheet.dart';

class BodySheetGroup extends StatelessWidget {
  const BodySheetGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'أضافه ولي أمر',
            style: TextStyle(
                fontSize: AppFontSize.hintFormField + 2,
                fontFamily: 'Cairo',
                color: AppColors.smallText),
          ),
          SizedBox(
            height: 10,
          ),
          CardBodysheet(
            title: 'اسم الطالب',
          ),
          Text(
            'بيانات ولي أمر الطالب',
            style: TextStyle(
                fontSize: AppFontSize.hintFormField + 2,
                fontFamily: 'Cairo',
                color: AppColors.smallText),
          ),
          SizedBox(
            height: 20,
          ),
          CardBodysheet(
            title: 'اسم ولي الامر',
          )
        ],
      ),
    );
  }
}
