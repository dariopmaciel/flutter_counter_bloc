part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  //terá um contador, ou seja um inteiro
  //o estado BASE, recebe um contador
  final int counter;
  const CounterState(this.counter);

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is CounterState && other.counter == counter;
  // }

  // @override
  // int get hashCode => counter.hashCode;
  @override
  List<Object?> get props => [
        counter,
      ];
}

//uma nopva classe que será o ESTADO inicial ao abrir a tela
class CounterStateInitial extends CounterState {
  // CounterStateInitial(int counter) : super(counter);
  const CounterStateInitial() : super(0);
}

class CounterStateDate extends CounterState {
  const CounterStateDate(int counter) : super(counter);
}
