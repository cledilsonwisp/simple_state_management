
import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/services/service_locator.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final stateManager = getIt<TimerPageManager>();
        stateManager.reset();
      },
      child: const Icon(Icons.replay),
    );
  }
}
