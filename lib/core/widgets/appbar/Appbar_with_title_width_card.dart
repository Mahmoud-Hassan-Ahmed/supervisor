import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

import 'dart:math';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:supervisor/core/dialog/exit_dailog.dart';

// import 'package:student/features/student/presentation/pages/view_profile.dart';

class AppBarWithTitleWidthCard extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Function callBack;
  AppBarWithTitleWidthCard({required this.context, required this.callBack});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        decoration: const BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26),
            )),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'قائمة الطلاب',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.titleFont - 4),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {
                    callBack.call();
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
    return SizedBox(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          topBar,
          Positioned(
              top: (MediaQuery.of(context).size.height / 4) / 2.1,
              left: 30,
              width: MediaQuery.of(context).size.width - 60,
              height: (MediaQuery.of(context).size.height / 6),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'اسم المدرسة ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: AppFontSize.hintFormField,
                              fontFamily: 'Cairo',
                              color: AppColors.smallText,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: .5,
                        indent: 10,
                        color: AppColors.smallText,
                        endIndent: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      // AppUtils.pushTo(
                                      //     context, const ViewProfilePage());
                                    },
                                    child: const Text(
                                      'اسم المجموعة',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintFormField,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                  )),
                              FDottedLine(
                                color: Colors.black,
                                height: 20.0,
                                strokeWidth: 0.5,
                                space: 0,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      exitDialog(context).show();
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '10',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText,
                                            color: AppColors.hint,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'عدد الطلاب',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintFormField,
                                            color: AppColors.smallText,
                                            fontFamily: 'Cairo',
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 6) +
      ((MediaQuery.of(context).size.height / 8));

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 6) +
      ((MediaQuery.of(context).size.height / 8));

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
