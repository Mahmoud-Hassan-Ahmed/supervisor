part of 'start_trip_bloc.dart';

abstract class StartTripState extends Equatable {
  const StartTripState();

  @override
  List<Object> get props => [];
}

class StartTripInitial extends StartTripState {}

class ChooseGroupState extends StartTripState {
  final int index;

  const ChooseGroupState(this.index);
  @override
  List<Object> get props => [index];
}

class OnBusStudentState extends StartTripState {
  final int index;

  const OnBusStudentState(this.index);
  @override
  List<Object> get props => [index];
}

class AbsentStudentState extends StartTripState {
  final int index;

  const AbsentStudentState(this.index);
  @override
  List<Object> get props => [index];
}

class DeliveryStudentState extends StartTripState {
  final int index;

  const DeliveryStudentState(this.index);
  @override
  List<Object> get props => [index];
}
