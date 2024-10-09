import 'package:flutter/material.dart';
import 'package:recordscreen/Blocs/RecordingBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_screen.dart';
import 'recording_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecordingBloc(),
      child: MaterialApp(
        title: 'Screen Recorder',
        home: SplashScreen(),
        routes: {
          '/recording': (context) => RecordingScreen(),
        },
      ),
    );
  }
}
