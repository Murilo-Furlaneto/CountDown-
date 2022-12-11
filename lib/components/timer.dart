import 'package:countdown/components/button_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../store/timer_store.dart';
import 'bottom_button.dart';

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TimerStore clock = TimerStore();

    return Observer(
      builder: (_) {
        return Column(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xff9DD1F1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 60),
                      child: Text(
                        'Timer Countdown',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Observer(
                            builder: (_) {
                              return Text(
                                '${clock.minutos} :${clock.segundos} ',
                                style: const TextStyle(fontSize: 120),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (!clock.iniciado)
                          ButtonTimer(
                            titulo: 'Iniciar',
                            inc: clock.iniciar,
                          ),
                        if (clock.iniciado)
                          ButtonTimer(
                            titulo: 'Parar',
                            inc: clock.parar,
                          ),
                        ButtonTimer(titulo: 'Reiniciar', inc: clock.reiniciar)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomButton(
                      text: 'Minutos',
                      dec: clock.setDownMinutes,
                      inc: clock.setUpMinutes,
                      valor: clock.minutes),
                  BottomButton(
                      text: 'Segundos',
                      dec: clock.setDownSecondes,
                      inc: clock.setUpSecondes,
                      valor: clock.seconds)
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
