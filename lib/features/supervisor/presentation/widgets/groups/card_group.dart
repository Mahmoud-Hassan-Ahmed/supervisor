import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class CardGroupWidget extends StatelessWidget {
  const CardGroupWidget({super.key, this.callBack});
  final Function? callBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack != null
          ? () {
              callBack!.call();
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(8),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.smallTextColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                            ),
                            onPressed: callBack != null
                                ? () {
                                    callBack!.call();
                                  }
                                : null,
                            child: const Text(
                              'الرحلات السابقة',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  FDottedLine(
                    color: Colors.black,
                    height: 80.0,
                    strokeWidth: 0.5,
                    space: 0,
                  ),
                  const Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'اسم المجموعة',
                            style: TextStyle(
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'عدد طلاب المجموعة',
                            style: TextStyle(
                              fontSize: AppFontSize.hintText - 3,
                              color: AppColors.smallText,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'افضل نصرا ',
                                style: TextStyle(
                                  fontSize: AppFontSize.hintText - 3,
                                  color: AppColors.smallText,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                              Text(
                                ' اسم السائق',
                                style: TextStyle(
                                    fontSize: AppFontSize.hintText,
                                    color: AppColors.smallText,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            'اخر تحديث 12/12/2022',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText,
                                color: AppColors.hint),
                          )
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
