import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegmant/Getx/controller/getxcontroller.dart';
import 'package:state_manegmant/Getx/view/counter1_get.dart';
import 'package:state_manegmant/Getx/view/counter2_get.dart';

class MyHomePageGetX extends StatelessWidget {
  MyHomePageGetX({
    Key? key,
  }) : super(key: key);
  final CounterGetx _getXCounter = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GetX"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Counter1GetX(),
              const SizedBox(
                height: 20,
              ),
              Counter2GetX()
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _getXCounter.reset();
                },
                tooltip: 'Clear',
                child: const Icon(Icons.clear_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  _getXCounter.inccremmentByTen();
                },
                tooltip: 'Increment By 10',
                child: const Icon(Icons.add_circle_outline_rounded),
              ),
              FloatingActionButton(
                  onPressed: () {
                    _getXCounter.decremment();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove_sharp)),
              FloatingActionButton(
                onPressed: () {
                  _getXCounter.incremment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
