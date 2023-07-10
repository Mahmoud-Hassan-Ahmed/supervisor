import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class CardSheetChooseGroupWidget extends StatelessWidget {
  const CardSheetChooseGroupWidget(
      {super.key, required this.border, required this.onTap});
  final bool border;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: border ? const BorderSide(color: Colors.red) : BorderSide.none,
        ),
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        'افضل نصرا ',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.smallText,
                            color: AppColors.hint),
                      ),
                      Text(
                        'اسم السائق',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.hintText,
                          color: AppColors.smallText,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'اخر تحديث 12/12/2022',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.smallText,
                      color: AppColors.hint,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'اسم المجموعة',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintText,
                      color: AppColors.smallText,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'عدد طلاب المجموعة',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintText,
                      color: AppColors.smallText,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
