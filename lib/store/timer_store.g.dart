// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerStore on TimerStoreBase, Store {
  late final _$minutosAtom =
      Atom(name: 'TimerStoreBase.minutos', context: context);

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  late final _$segundosAtom =
      Atom(name: 'TimerStoreBase.segundos', context: context);

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  late final _$iniciadoAtom =
      Atom(name: 'TimerStoreBase.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: 'TimerStoreBase.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: 'TimerStoreBase.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$TimerStoreBaseActionController =
      ActionController(name: 'TimerStoreBase', context: context);

  @override
  void setUpMinutes() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.setUpMinutes');
    try {
      return super.setUpMinutes();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUpSecondes() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.setUpSecondes');
    try {
      return super.setUpSecondes();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDownMinutes() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.setDownMinutes');
    try {
      return super.setDownMinutes();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDownSecondes() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.setDownSecondes');
    try {
      return super.setDownSecondes();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void iniciar() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.parar');
    try {
      return super.parar();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reiniciar() {
    final _$actionInfo = _$TimerStoreBaseActionController.startAction(
        name: 'TimerStoreBase.reiniciar');
    try {
      return super.reiniciar();
    } finally {
      _$TimerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
minutos: ${minutos},
segundos: ${segundos},
iniciado: ${iniciado},
minutes: ${minutes},
seconds: ${seconds}
    ''';
  }
}
