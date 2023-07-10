import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/pages/tracking_page_bus.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/tracking_bus/body_sheet.dart';

class CardTrackingWidget extends StatelessWidget {
  const CardTrackingWidget(
      {super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          AppUtils.pushTo(context, const TrackingBusPage());
        },
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height / 4.5),
                width: (MediaQuery.of(context).size.width / 2.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: SizedBox(
                              height: 35,
                              child: TextButton.icon(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppColors.bgSendMessage),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all<Size>(
                                      Size.zero),
                                ),
                                onPressed: () {
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) =>
                                        const BodysheetDownload(),
                                  );
                                },
                                icon: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: SvgPicture.asset(
                                    'assets/icons/download.svg',
                                    height: 12,
                                    width: 12,
                                    color: AppColors.smallText,
                                  ),
                                ),
                                label: const Text(
                                  'تحميل التقرير',
                                  softWrap: false,
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.hintText - 2,
                                    color: AppColors.smallText,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(10))),
                          child: Center(
                            child: Text(
                              text,
                              style: const TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintText - 2,
                                  color: AppColors.smallText),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              FDottedLine(
                color: Colors.grey,
                height: (MediaQuery.of(context).size.height / 4.5) - 30,
                strokeWidth: 1.0,
                dottedLength: 2.0,
                space: 0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'اسم المشرف',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintText,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.smallText),
                            ),
                            Text(
                              'المجموعة',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintText,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.smallText),
                            ),
                            Text(
                              'اسم المجموعة',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintText,
                                  color: AppColors.smallText),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/parent.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 75,
                          height: 75,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Column(
                          children: [
                            Text('عدد الطلاب في الباص',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintText - 1,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                              '٢٠ طالب من ٢٥',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: AppFontSize.hintFormField - 3,
                                  color: AppColors.smallText),
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
