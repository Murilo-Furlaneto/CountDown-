import 'dart:async';

import 'package:mobx/mobx.dart';
part 'timer_store.g.dart';

class TimerStore = TimerStoreBase with _$TimerStore;

abstract class TimerStoreBase with Store {
  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  bool iniciado = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @action
  void setUpMinutes() {
    if (minutes <= 58 && !iniciado) {
      minutes++;
      minutos++;
    }
  }

  @action
  void setUpSecondes() {
    if (seconds <= 58 && !iniciado) {
      seconds++;
      segundos++;
    }
  }

  @action
  void setDownMinutes() {
    if (minutes > 1 && !iniciado) {
      minutes--;
      minutos--;
    }
  }

  @action
  void setDownSecondes() {
    if (seconds > 0 && !iniciado) {
      seconds--;
      segundos--;
    }
  }

  Timer? cronometro;

  @action
  void iniciar() {
    iniciado = true;

    cronometro = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutos == 0 && segundos == 0) {
        reiniciar();
      } else if (segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    parar();
    minutos = 2;
    segundos = 0;
    minutes = 2;
    seconds = 0;
  }
}
