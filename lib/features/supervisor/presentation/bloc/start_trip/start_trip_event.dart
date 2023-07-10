part of 'start_trip_bloc.dart';

abstract class StartTripEvent extends Equatable {
  const StartTripEvent();

  @override
  List<Object> get props => [];
}

class ChooseGroupEvent extends StartTripEvent {
  final int index;

  const ChooseGroupEvent(this.index);
  @override
  List<Object> get props => [index];
}

class OnBusStudentEvent extends StartTripEvent {
  final int index;

  const OnBusStudentEvent(this.index);
  @override
  List<Object> get props => [index];
}

class AbsentStudentEvent extends StartTripEvent {
  final int index;

  const AbsentStudentEvent(this.index);
  @override
  List<Object> get props => [index];
}

class DeliveryStudentEvent extends StartTripEvent {
  final int index;

  const DeliveryStudentEvent(this.index);
  @override
  List<Object> get props => [index];
}
