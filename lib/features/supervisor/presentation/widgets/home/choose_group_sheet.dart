import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/core/theme/colors.dart';
import 'package:supervisor/core/theme/font_size.dart';
import 'package:supervisor/core/widgets/buttons/full_width_btn.dart';
import 'package:supervisor/features/supervisor/presentation/bloc/start_trip/start_trip_bloc.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/card_sheet.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/sheet_present_absent.dart';

class ChooseGroupSheetBody extends StatelessWidget {
  const ChooseGroupSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return BlocProvider(
      create: (context) => StartTripBloc(),
      child: BlocBuilder<StartTripBloc, StartTripState>(
        builder: (context, state) {
          if (state is ChooseGroupState) {
            index = state.index;
          }
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'اختر المجموعة',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: AppFontSize.hintFormField,
                      color: AppColors.smallText),
                ),
                const SizedBox(
                  height: 20,
                ),
                CardSheetChooseGroupWidget(
                  border: index == 0,
                  onTap: () {
                    StartTripBloc.get(context).add(const ChooseGroupEvent(0));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSheetChooseGroupWidget(
                  border: index == 1,
                  onTap: () {
                    StartTripBloc.get(context).add(const ChooseGroupEvent(1));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSheetChooseGroupWidget(
                  border: index == 2,
                  onTap: () {
                    StartTripBloc.get(context).add(const ChooseGroupEvent(2));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: FullWidthBtn(
                      label: 'التالي',
                      callBack: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (context) => SingleChildScrollView(
                              child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: const SheetPresentAbsent())),
                        );
                      }),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
