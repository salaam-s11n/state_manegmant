import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegmant/Getx/controller/getxcontroller.dart';

class Counter2GetX extends StatelessWidget {
  Counter2GetX({Key? key}) : super(key: key);
  final CounterGetx _getXCounter = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Obx(
          () => Text(
            '${_getXCounter.counter2.value ~/ 10}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ],
    );
  }
}
