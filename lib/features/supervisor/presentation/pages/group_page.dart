import 'package:flutter/material.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/texts/note_text.dart';
import 'package:supervisor/features/supervisor/presentation/pages/list_student_school.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/list_group_card.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'المجموعات',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
              hasScrollBody: true,
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFf06030).withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: const NoteTextWidget(
                          color: AppColors.smallText,
                          text:
                              'عزيزي المشرف/ لاستعراض الرحلات السابقة  يرجى اختيار المجموعة اولا'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const ListstudentSchoolPage());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const ListstudentSchoolPage());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const ListstudentSchoolPage());
                    },
                  )
                ],
              ))
        ],
      ),
    );
  }
}
