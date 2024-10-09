import 'package:equatable/equatable.dart';

abstract class RecordingState extends Equatable {
  const RecordingState();

  @override
  List<Object> get props => [];
}

class RecordingInitial extends RecordingState {}

class RecordingInProgress extends RecordingState {}

class RecordingStopped extends RecordingState {}
