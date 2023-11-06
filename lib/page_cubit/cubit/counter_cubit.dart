import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  
  CounterCubit() : super(CounterStateInitial());

  void increment() {
    emit(CounterStateDate(state.counter + 1));
  }

  void decrement() {
    emit(CounterStateDate(state.counter - 1));
  }
}
