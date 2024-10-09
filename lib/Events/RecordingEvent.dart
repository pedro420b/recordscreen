import 'package:equatable/equatable.dart';

abstract class RecordingEvent extends Equatable {
  const RecordingEvent();

  @override
  List<Object> get props => [];
}

class StartRecording extends RecordingEvent {}

class StopRecording extends RecordingEvent {}
