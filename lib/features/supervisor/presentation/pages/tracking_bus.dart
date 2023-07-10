import 'package:flutter/material.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/tracking_bus/card_tracking.dart';

class TrackingCardsBusPage extends StatefulWidget {
  const TrackingCardsBusPage({super.key});

  @override
  State<TrackingCardsBusPage> createState() => _TrackingCardsBusPageState();
}

class _TrackingCardsBusPageState extends State<TrackingCardsBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 2,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'تتبع الباص',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          const SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              children: [
                CardTrackingWidget(
                  color: Color(0xFFE8F6E8),
                  text: 'الرحلة فعالة',
                ),
                CardTrackingWidget(
                  color: Color(0xFFF6E8EC),
                  text: 'لا توجد رحلة',
                ),
                CardTrackingWidget(
                  color: Color(0xFFE8F6E8),
                  text: 'الرحلة فعالة',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
