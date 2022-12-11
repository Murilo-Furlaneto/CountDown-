import 'package:countdown/components/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ClockPage extends StatelessWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) {
            return Column(
              children: const [
                Expanded(child: Timer()),
              ],
            );
          },
        ),
      ),
    );
  }
}
