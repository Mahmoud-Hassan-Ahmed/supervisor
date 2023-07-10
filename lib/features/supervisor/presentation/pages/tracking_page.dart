import 'package:flutter/material.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/features/supervisor/presentation/pages/students_bus.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/body_tracking/body_tracking.dart';
// import 'package:supervisor/features/supervisor/presentation/widgets/body_tracking/body_tracking.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key, required this.index});
  final int index;
  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        AppUtils.pushTo(context, const StudentBusPage());
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: AppBarWithTitle(
                    callBack: () {
                      AppUtils.pushTo(context, const StudentBusPage());
                    },
                    title: 'التتبع',
                    context: context)),
            SliverFillRemaining(
                hasScrollBody: true,
                child: BodyTrackingWidget(index: widget.index))
          ],
        ),
      ),
    );
  }
}
