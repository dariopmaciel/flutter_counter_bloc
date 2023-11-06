part of 'counter_bloc.dart';

abstract class CounterState {
  //terá um contador, ou seja um inteiro
  //o estado BASE, recebe um contador
  final int counter;

  CounterState(this.counter);
}

//uma nopva classe que será o ESTADO inicial ao abrir a tela
class CounterStateInitial extends CounterState {
  // CounterStateInitial(int counter) : super(counter);
  CounterStateInitial() : super(0);
}


class CounterStateDate extends CounterState{
  CounterStateDate(int counter): super(counter);
}