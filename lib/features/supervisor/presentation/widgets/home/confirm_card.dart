import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/school/btn_round.dart';

class ConfirmCardstudent extends StatelessWidget {
  const ConfirmCardstudent(
      {super.key,
      required this.absent,
      required this.absentTap,
      required this.prsentTap});
  final bool absent;
  final Function absentTap;
  final Function prsentTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BtnRoundWithtitle(
          bg: AppColors.smallTextColor,
          lable: 'غياب',
          textColor: Colors.white,
          onTap: () {
            absentTap.call();
          },
        ),
        const SizedBox(
          width: 10,
        ),
        BtnRoundWithtitle(
          onTap: () {
            prsentTap.call();
          },
          bg: AppColors.orange,
          lable: 'صعد الباص',
          textColor: Colors.white,
        ),
        Expanded(
            child: Text(
          'اسم الطالب',
          textAlign: TextAlign.right,
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: AppFontSize.hintText,
              color: absent ? Colors.red : AppColors.smallText),
        ))
      ],
    );
  }
}
