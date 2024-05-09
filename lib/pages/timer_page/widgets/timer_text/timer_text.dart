
import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/services/service_locator.dart';

class TimerTextWidget extends StatelessWidget {
  const TimerTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final stateManager = getIt<TimerPageManager>();
    return ValueListenableBuilder<String>(
      valueListenable: stateManager.timeLeftNotifier,
      builder: (context, timeLeft, _) {
        debugPrint('building time left state: $timeLeft');
        return Text(
          timeLeft,
          style: Theme.of(context).textTheme.displayMedium,
        );
      },
    );
  }
}
