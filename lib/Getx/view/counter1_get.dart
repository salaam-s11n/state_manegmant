import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegmant/Getx/controller/getxcontroller.dart';

class Counter1GetX extends StatelessWidget {
  Counter1GetX({Key? key}) : super(key: key);
  final CounterGetx _getXCounter = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        GetBuilder<CounterGetx>(
          init: _getXCounter,
          builder: (_) => Text(
            '${_getXCounter.counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ],
    );
  }
}
