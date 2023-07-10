import 'package:flutter/material.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/choose_group_sheet.dart';

class CardTripHome extends StatelessWidget {
  const CardTripHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      color: Colors.yellow,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(right: 14),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        ' الرحلات',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.smallText,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.smallText * 2),
                      ),
                    ),
                    const Text(
                      'يمكنك الضغط هنا لتتبع الرحلة',
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText,
                          color: AppColors.smallTextColor),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                context: context,
                                builder: (context) => SingleChildScrollView(
                                    child: Container(
                                        padding: const EdgeInsets.all(16.0),
                                        child: const ChooseGroupSheetBody())),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              backgroundColor: AppColors.smallTextColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ), // Adjust the radius value as needed
                              ),
                            ),
                            child: const Text(
                              "ابدأ الرحلة",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.smallText + 3,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/image_bus1.png',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
