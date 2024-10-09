import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screen_recording/flutter_screen_recording.dart';
import 'package:recordscreen/Events/RecordingEvent.dart';
import 'package:recordscreen/States/RecordingState.dart';

class RecordingBloc extends Bloc<RecordingEvent, RecordingState> {
  RecordingBloc() : super(RecordingInitial());

  Stream<RecordingState> mapEventToState(RecordingEvent event) async* {
    if (event is StartRecording) {
      bool startSuccess = await FlutterScreenRecording.startRecordScreen("test_video");
      if (startSuccess) {
        yield RecordingInProgress();
      }
    } else if (event is StopRecording) {
      bool stopSuccess = (await FlutterScreenRecording.stopRecordScreen) as bool;
      if (stopSuccess) {
        yield RecordingStopped();
      }
    }
  }
}
