import 'package:flutter/material.dart';
import 'package:flutter_simple_state_management/pages/timer_page/timer_page_controller.dart';
import 'package:flutter_simple_state_management/pages/timer_page/widgets/buttons/pause_button.dart';
import 'package:flutter_simple_state_management/pages/timer_page/widgets/buttons/reset_button.dart';
import 'package:flutter_simple_state_management/pages/timer_page/widgets/buttons/start_button.dart';

import 'package:flutter_simple_state_management/services/service_locator.dart';

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManager = getIt<TimerPageManager>();
    return ValueListenableBuilder<ButtonState>(
      valueListenable: stateManager.buttonNotifier,
      builder: (context, buttonState, child) {
        debugPrint('building button state: $buttonState');
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (buttonState == ButtonState.initial) ...[
              const StartButton(),
            ],
            if (buttonState == ButtonState.started) ...[
              const PauseButton(),
              const SizedBox(width: 20),
              const ResetButton(),
            ],
            if (buttonState == ButtonState.paused) ...[
              const StartButton(),
              const SizedBox(width: 20),
              const ResetButton(),
            ],
            if (buttonState == ButtonState.finished) ...[
              const ResetButton(),
            ],
          ],
        );
      },
    );
  }
}