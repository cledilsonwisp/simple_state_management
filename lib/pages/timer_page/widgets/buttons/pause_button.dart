
import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/services/service_locator.dart';

class PauseButton extends StatelessWidget {
  const PauseButton({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final stateManager = getIt<TimerPageManager>();
        stateManager.pause();
      },
      child: const Icon(Icons.pause),
    );
  }
}
