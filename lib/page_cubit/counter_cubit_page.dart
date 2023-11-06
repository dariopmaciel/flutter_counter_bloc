import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/page_cubit/cubit/counter_cubit.dart';

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
              return Text('Counter ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text(" ")),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                  label: const Text(" ")),
            ],
          )
        ],
      ),
    );
  }
}
