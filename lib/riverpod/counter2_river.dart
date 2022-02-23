import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_river_pod.dart';

class Counter2River extends StatelessWidget {
  const Counter2River({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '{Provider.of<CounterProvider>(context).counter ~/ 10}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
