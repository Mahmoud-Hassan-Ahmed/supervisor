import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class CardSonsWidget extends StatelessWidget {
  const CardSonsWidget(
      {super.key,
      this.callBack,
      required this.label,
      this.bg = AppColors.smallTextColor});
  final Function? callBack;
  final String label;
  final Color bg;

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
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(8),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(bg),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )),
                          ),
                          onPressed: callBack != null
                              ? () {
                                  callBack!.call();
                                }
                              : null,
                          child: Text(
                            label,
                            style: const TextStyle(
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
                  height: 50.0,
                  strokeWidth: .5,
                  space: 0,
                ),
                const Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'اسم الطالب',
                          style: TextStyle(
                              fontSize: AppFontSize.hintText,
                              color: AppColors.smallText,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ينبع- السعودية',
                          style: TextStyle(
                            fontSize: AppFontSize.hintText - 3,
                            color: AppColors.smallText,
                            fontFamily: 'Cairo',
                          ),
                        ),
                        Text(
                          'مجموعة ب',
                          style: TextStyle(
                            fontSize: AppFontSize.hintText - 3,
                            color: AppColors.smallText,
                            fontFamily: 'Cairo',
                          ),
                        )
                      ],
                    )),
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/parent.png'),
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}
