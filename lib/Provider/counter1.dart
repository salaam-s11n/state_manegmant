import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class Counter1 extends StatelessWidget {
  const Counter1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '${Provider.of<CounterProvider>(context).counter}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
