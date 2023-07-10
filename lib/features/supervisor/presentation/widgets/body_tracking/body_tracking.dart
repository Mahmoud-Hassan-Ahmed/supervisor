import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/pages/students_bus.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/school/btn_round.dart';

class BodyTrackingWidget extends StatelessWidget {
  const BodyTrackingWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          width: double.infinity,
          color: AppColors.bgSendMessage,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset('assets/icons/mapicon.svg'),
                ),
              )
            ],
          ),
        )),
        Card(
          elevation: 6.0,
          color: Colors.green,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 14),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    const Text('الباص متجه إلي المنزل',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintFormField,
                            color: Colors.green)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            BtnRoundWithtitle(
                              bg: AppColors.orange,
                              lable: 'انزال الطالب',
                              textColor: Colors.white,
                              onTap: () {
                                AppUtils.done.add(index);
                                AppUtils.pushTo(
                                    context, const StudentBusPage());
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            BtnRoundWithtitle(
                              onTap: () {},
                              bg: AppColors.smallTextColor,
                              lable: 'اتصال',
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'اسم الطالب ',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: AppFontSize.hintFormField,
                                      color: AppColors.smallText),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset('assets/icons/education.svg')
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'الاتصال بوالد الطالب',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontSize: AppFontSize.hintFormField,
                                      color: AppColors.smallText),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset('assets/icons/call.svg')
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}
