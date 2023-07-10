import 'package:flutter/material.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/pages/group_page.dart';

class CardsHomeWidgets extends StatelessWidget {
  const CardsHomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset('assets/images/students.png'),
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'قائمة الطلاب',
                            style: TextStyle(
                                color: AppColors.smallText,
                                fontSize: AppFontSize.titleFont,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'يمكنك الضغط هنا ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.smallTextColor,
                                  fontSize: AppFontSize.smallText,
                                  fontFamily: 'Cairo'),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                AppUtils.pushTo(context, const GroupPage());
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                backgroundColor: AppColors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ), // Adjust the radius value as needed
                                ),
                              ),
                              child: const Text(
                                "الطلاب",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.smallText + 3,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ))
                ]),
              )),
        ],
      ),
    );
  }
}
