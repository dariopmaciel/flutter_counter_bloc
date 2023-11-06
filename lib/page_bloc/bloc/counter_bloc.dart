import 'package:bloc/bloc.dart';
//UM BLOC É TUDO AQUILO QUE ELE IMPLEMENTA, OU SEJA ELE É AS 3 CLASSE JUNTAS EM UMA SÓ
//POR ISTO USAR 'PART'
part 'counter_event.dart';
part 'counter_state.dart';

//atenção a quem será extendido 'extends Bloc<CounterEvent, CounterState>'
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // CounterBloc(CounterState initialState):super(initialState);
  CounterBloc() : super(CounterStateInitial()) {
    //mapeio
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

//Será necessário mapear os eventos no construtor para suas respectivas chamadas
  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    //
    print("Build Counter + ");
    emit(CounterStateDate(state.counter + 1));
    print("Incremento ${state.counter}");
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    //
    print("Build Counter - ");
    emit(CounterStateDate(state.counter - 1));
    print("Decremento ${state.counter}");
  }
}
