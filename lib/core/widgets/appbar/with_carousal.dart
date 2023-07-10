import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/features/supervisor/presentation/pages/notifcation_page.dart';

class WithCarousalBar extends SliverPersistentHeaderDelegate {
  final BuildContext context;
  final Widget carousal;
  WithCarousalBar({
    required this.context,
    required this.carousal,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height / 4 +
            (MediaQuery.of(context).size.height / 18),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_home_bar.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Positioned(
                top: 70,
                child: IconButton(
                    onPressed: () {
                      AppUtils.pushTo(context, const NotificationPage());
                    },
                    icon: SvgPicture.asset('assets/icons/notification.svg')),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مساء الخير ',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                  fontSize: AppFontSize.hintText),
                            ),
                            Text(
                              'اسم الطالب',
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                  fontSize: AppFontSize.hintFormField,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/user.png',
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
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
              top: (MediaQuery.of(context).size.height / 4) / 1.35,
              left: 15,
              width: (MediaQuery.of(context).size.width - 30),
              child: carousal),
          // if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 5));

  @override
  double get minExtent =>
      (MediaQuery.of(context).size.height / 4) +
      ((MediaQuery.of(context).size.height / 5));

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
