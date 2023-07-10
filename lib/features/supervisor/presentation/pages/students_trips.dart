import 'package:flutter/material.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:supervisor/features/supervisor/presentation/pages/students_list.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/card_group.dart';

class StudentTrips extends StatefulWidget {
  const StudentTrips({super.key});

  @override
  State<StudentTrips> createState() => _StudentTripsState();
}

class _StudentTripsState extends State<StudentTrips> {
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
                title: 'قائمة المجموعات',
                callBack: () {
                  Navigator.pop(context);
                }),
          ),
          SliverFillRemaining(
              hasScrollBody: true,
              child: ListView(
                children: [
                  CardGroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const StudentListTrips());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardGroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const StudentListTrips());
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CardGroupWidget(
                    callBack: () {
                      AppUtils.pushTo(context, const StudentListTrips());
                    },
                  )
                ],
              ))
        ],
      ),
    );
  }
}
