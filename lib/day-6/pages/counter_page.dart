import 'package:erwan_kurnia/day-6/blocs/counter_cubit.dart';
import 'package:erwan_kurnia/day-6/blocs/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final cubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CounterCubit, CounterState>(
          bloc: cubit,
          listener: (context, state) {
            if(state.counter1 % 5 == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Counter 1: ${state.counter1}'),  
                ),
              );
            }
            if(state.counter2 % 5 == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Counter 2: ${state.counter2}'),
                ),
              );
            }
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Page'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Center(
          child: BlocBuilder<CounterCubit, CounterState>(
            bloc: cubit,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Counter 1: ${state.counter1}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    'Counter 2: ${state.counter2}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              );
            }
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 16,
              children: [
                FloatingActionButton(
                  onPressed: cubit.decrement,
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: cubit.increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 16,
              children: [
                FloatingActionButton(
                  onPressed: cubit.decrement2,
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: cubit.increment2,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}