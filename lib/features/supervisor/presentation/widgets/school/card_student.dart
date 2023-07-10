import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/body_sheet.dart';

class CardStudentWidgr extends StatelessWidget {
  const CardStudentWidgr({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          context: context,
          builder: (context) => const BodySheetGroup(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 10,
          color: AppColors.smallTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios_new),
                          Text(
                            'اسم الطالب',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField,
                                color: AppColors.smallText),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'الكل',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'نوع الرحلة',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField,
                                color: AppColors.smallText,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6,
                          ),
                          const Text(
                            'العنوان',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset('assets/icons/mapmarker.svg')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: AppColors.smallTextColor,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/parent.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
