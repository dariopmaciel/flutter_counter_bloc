import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/page_cubit/cubit/counter_cubit.dart';

// O cubit só atualiza a tela se ele identificar que a nova instancia é diferente da instancia que esta na tela vej 'print(state.runtimeType);'. Veja 'counter_state' implementando o 'Generaty Equality'. ao invez disto add a dempendencia 'Equatable', reduzindo a verbose. 

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Cubit'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              print(state.runtimeType);
              return Text('Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(" ")),
              TextButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(" ")),
            ],
          )
        ],
      ),
    );
  }
}
