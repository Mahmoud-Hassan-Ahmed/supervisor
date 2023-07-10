import 'package:flutter/material.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:supervisor/features/supervisor/presentation/pages/post_trip.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/card_student.dart';

class StudentListTrips extends StatefulWidget {
  const StudentListTrips({super.key});

  @override
  State<StudentListTrips> createState() => _StudentListTripsState();
}

class _StudentListTripsState extends State<StudentListTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(
        indexActive: 3,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'قائمة الطلاب',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
              hasScrollBody: true,
              child: ListView(
                children: [
                  CardSonsWidget(
                    label: 'الرحلات السابقة',
                    callBack: () {
                      AppUtils.pushTo(context, const PostTripPage());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardSonsWidget(
                    label: 'الرحلات السابقة',
                    callBack: () {
                      AppUtils.pushTo(context, const PostTripPage());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardSonsWidget(
                    label: 'الرحلات السابقة',
                    callBack: () {
                      AppUtils.pushTo(context, const PostTripPage());
                    },
                  )
                ],
              ))
        ],
      ),
    );
  }
}
