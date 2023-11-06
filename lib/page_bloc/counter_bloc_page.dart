import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/page_bloc/bloc/counter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build Tela");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (BuildContext context, state) {
              return Text('Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium);
            },
            // child:
            // Text('Counter ${10}',
            // style: Theme.of(context).textTheme.headlineMedium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {
                    //chamada do evento 'counter_event'
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(" ")),
              TextButton.icon(
                  onPressed: () {
                    //chamada do evento 'counter_event'
                    context.read<CounterBloc>().add(CounterDecrement());
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(" ")),
            ],
          )
        ],
      ),
    );
  }

  @override
  List<Object?> get props => [];
}
