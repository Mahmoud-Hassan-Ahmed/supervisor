import 'package:flutter/material.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/body_tracking_bus/body_tracking.dart';

class TrackingBusPage extends StatefulWidget {
  const TrackingBusPage({super.key});

  @override
  State<TrackingBusPage> createState() => _TrackingBusPageState();
}

class _TrackingBusPageState extends State<TrackingBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  callBack: () {
                    Navigator.pop(context);
                  },
                  title: 'التتبع',
                  context: context)),
          const SliverFillRemaining(
              hasScrollBody: true, child: BodyTrackingBusWidget())
        ],
      ),
    );
  }
}
