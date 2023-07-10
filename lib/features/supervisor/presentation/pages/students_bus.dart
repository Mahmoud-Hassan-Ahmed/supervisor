import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:supervisor/core/widgets/buttons/full_width_btn.dart';
import 'package:supervisor/features/supervisor/presentation/bloc/start_trip/start_trip_bloc.dart';
import 'package:supervisor/features/supervisor/presentation/pages/home_page.dart';
import 'package:supervisor/features/supervisor/presentation/pages/tracking_page.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/groups/card_student.dart';

class StudentBusPage extends StatefulWidget {
  const StudentBusPage({super.key});
  static BuildContext? context;
  @override
  State<StudentBusPage> createState() => _StudentBusPageState();
}

class _StudentBusPageState extends State<StudentBusPage> {
  @override
  Widget build(BuildContext context) {
    StudentBusPage.context = context;
    return BlocProvider(
      create: (context) => StartTripBloc(),
      child: BlocBuilder<StartTripBloc, StartTripState>(
        builder: (context, state) {
          if (state is DeliveryStudentState) {
            AppUtils.done.add(state.index);
          }
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
                          bg: AppUtils.done.contains(0)
                              ? const Color(0xFF749C4A)
                              : AppColors.smallTextColor,
                          label: AppUtils.done.contains(0)
                              ? 'تم التوصيل'
                              : 'توجه الآن ',
                          callBack: !AppUtils.done.contains(0)
                              ? () {
                                  AppUtils.pushTo(
                                      context, const TrackingPage(index: 0));
                                }
                              : null,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CardSonsWidget(
                          bg: AppUtils.done.contains(1)
                              ? const Color(0xFF749C4A)
                              : AppColors.smallTextColor,
                          label: AppUtils.done.contains(1)
                              ? 'تم التوصيل'
                              : 'توجه الآن ',
                          callBack: !AppUtils.done.contains(1)
                              ? () {
                                  AppUtils.pushToAnReplace(
                                      context, const TrackingPage(index: 1));
                                }
                              : null,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CardSonsWidget(
                          bg: AppUtils.done.contains(2)
                              ? const Color(0xFF749C4A)
                              : AppColors.smallTextColor,
                          label: AppUtils.done.contains(2)
                              ? 'تم التوصيل'
                              : 'توجه الآن ',
                          callBack: !AppUtils.done.contains(2)
                              ? () {
                                  AppUtils.pushTo(
                                      context, const TrackingPage(index: 2));
                                }
                              : null,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: FullWidthBtn(
                              bg: AppUtils.done.length == 3
                                  ? AppColors.smallTextColor
                                  : Colors.grey,
                              label: 'انهاء الرحلة',
                              callBack: AppUtils.done.length == 3
                                  ? () {
                                      AppUtils.absent.clear();
                                      AppUtils.present.clear();
                                      AppUtils.done.clear();
                                      AppUtils.pushTo(
                                          context, const HomePage());
                                    }
                                  : null),
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
