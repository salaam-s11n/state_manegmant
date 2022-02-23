import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manegmant/Block/bloc/counter_block.dart';

class Counter1Block extends StatelessWidget {
  const Counter1Block({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        BlocBuilder<CounterBlock, int>(
          builder: (context, count) {
            return Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ],
    );
  }
}
