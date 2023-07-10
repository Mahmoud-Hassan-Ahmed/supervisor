import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'start_trip_event.dart';
part 'start_trip_state.dart';

class StartTripBloc extends Bloc<StartTripEvent, StartTripState> {
  StartTripBloc() : super(StartTripInitial()) {
    on<StartTripEvent>((event, emit) {
      if (event is ChooseGroupEvent) {
        emit(ChooseGroupState(event.index));
      } else if (event is OnBusStudentEvent) {
        emit(OnBusStudentState(event.index));
      } else if (event is AbsentStudentEvent) {
        emit(AbsentStudentState(event.index));
      } else if (event is DeliveryStudentEvent) {
        emit(DeliveryStudentState(event.index));
      }
    });
  }
  static StartTripBloc get(BuildContext context) => BlocProvider.of(context);
}
