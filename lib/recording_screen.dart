import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Blocs/RecordingBloc.dart';
import 'Events/RecordingEvent.dart';
import 'States/RecordingState.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen Recorder')),
      body: Center(
        child: BlocBuilder<RecordingBloc, RecordingState>(
          builder: (context, state) {
            if (state is RecordingInitial || state is RecordingStopped) {
              return ElevatedButton(
                onPressed: () {
                  context.read<RecordingBloc>().add(StartRecording());
                },
                child: Text('Start Recording'),
              );
            } else if (state is RecordingInProgress) {
              return ElevatedButton(
                onPressed: () {
                  context.read<RecordingBloc>().add(StopRecording());
                },
                child: Text('Stop Recording'),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
