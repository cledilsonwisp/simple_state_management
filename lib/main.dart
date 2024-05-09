import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/time_page.dart';
import 'package:flutter_simple_state_management/services/service_locator.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerPage(),
    );
  }
}