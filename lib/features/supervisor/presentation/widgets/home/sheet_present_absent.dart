import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/core/helper/AppUtils.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/core/widgets/buttons/full_width_btn.dart';
import 'package:supervisor/features/supervisor/presentation/bloc/start_trip/start_trip_bloc.dart';
import 'package:supervisor/features/supervisor/presentation/pages/students_bus.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/confirm_card.dart';

class SheetPresentAbsent extends StatelessWidget {
  const SheetPresentAbsent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartTripBloc(),
      child: BlocBuilder<StartTripBloc, StartTripState>(
        builder: (context, state) {
          if (state is OnBusStudentState) {
            AppUtils.absent.remove(state.index);
            AppUtils.present.add(state.index);
          } else if (state is AbsentStudentState) {
            AppUtils.absent.add(state.index);
            AppUtils.present.remove(state.index);
          }
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'رحلة العودة للمنزل',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintText,
                    color: AppColors.smallText),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'الرجاء تأكيد ركوب الطلاب الباص',
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: AppFontSize.hintFormField,
                    color: AppColors.orange),
              ),
              const SizedBox(
                height: 10,
              ),
              if (!AppUtils.present.contains(0))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(0),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(0));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(0));
                  },
                ),
              if (!AppUtils.present.contains(1))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(1),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(1));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(1));
                  },
                ),
              if (!AppUtils.present.contains(2))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(2),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(2));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(2));
                  },
                ),
              if (!AppUtils.present.contains(3))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(3),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(3));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(3));
                  },
                ),
              if (!AppUtils.present.contains(4))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(4),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(4));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(4));
                  },
                ),
              if (!AppUtils.present.contains(5))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(5),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(5));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(5));
                  },
                ),
              if (!AppUtils.present.contains(6))
                ConfirmCardstudent(
                  absent: AppUtils.absent.contains(6),
                  absentTap: () {
                    StartTripBloc.get(context).add(const AbsentStudentEvent(6));
                  },
                  prsentTap: () {
                    StartTripBloc.get(context).add(const OnBusStudentEvent(6));
                  },
                ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: FullWidthBtn(
                      bg: AppUtils.absent.length + AppUtils.present.length == 7
                          ? AppColors.orange
                          : Colors.grey,
                      label: 'ابدأ الرحلة',
                      callBack: AppUtils.absent.length +
                                  AppUtils.present.length ==
                              7
                          ? () {
                              AppUtils.pushTo(context, const StudentBusPage());
                            }
                          : null))
            ],
          );
        },
      ),
    );
  }
}
