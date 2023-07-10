import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/widgets/appbar/Appbar_with_title_width_card.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/school/btn_round.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/school/card_student.dart';

class ListstudentSchoolPage extends StatefulWidget {
  const ListstudentSchoolPage({super.key});

  @override
  State<ListstudentSchoolPage> createState() => _ListstudentSchoolPageState();
}

class _ListstudentSchoolPageState extends State<ListstudentSchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitleWidthCard(
                context: context,
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
              hasScrollBody: true,
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BtnRoundWithtitle(
                        textColor: Colors.grey,
                        bg: AppColors.bgSendMessage,
                        lable: 'الغياب',
                        onTap: () {},
                      ),
                      BtnRoundWithtitle(
                        bg: AppColors.bgSendMessage,
                        lable: 'الحضور ',
                        textColor: Colors.grey,
                        onTap: () {},
                      ),
                      BtnRoundWithtitle(
                        bg: AppColors.orange,
                        lable: 'الكل ',
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardStudentWidgr(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardStudentWidgr(),
                ],
              ))
        ],
      ),
    );
  }
}
