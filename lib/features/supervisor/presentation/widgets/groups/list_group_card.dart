import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';

class GroupWidget extends StatelessWidget {
  const GroupWidget({super.key, this.callBack, this.border = false});
  final Function? callBack;
  final bool border;

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
                side: border ? const BorderSide() : BorderSide.none),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(8),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.smallTextColor),
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
                          child: const Text(
                            'قائمة الطلاب',
                            style: TextStyle(
                                fontSize: AppFontSize.smallText,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    )),
                const Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
