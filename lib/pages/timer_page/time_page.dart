import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/pages/timer_page/widgets/buttons/buttons_container.dart';
import 'package:flutter_simple_state_management/pages/timer_page/widgets/timer_text/timer_text.dart';
import 'package:flutter_simple_state_management/services/service_locator.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final stateManager = getIt<TimerPageManager>();

  @override
  void initState() {
    stateManager.initTimerState();
    super.initState();
  }

  @override
  void dispose() {
    stateManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('building MyHomePage');
    return Scaffold(
      appBar: AppBar(title: const Text('Meu contador')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TimerTextWidget(),
            SizedBox(height: 20),
            ButtonsContainer(),
          ],
        ),
      ),
    );
  }
}
