import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_manegmant/riverpod/counter2_river.dart';
import 'package:state_manegmant/riverpod/counter_river_pod.dart';
import 'counter1_river.dart';

final counterriverpod =
    StateNotifierProvider<CounterRiverPod, int>((_) => CounterRiverPod());

class MyHomePageRiver extends StatelessWidget {
  const MyHomePageRiver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("River Pod"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Counter1River(),
              SizedBox(
                height: 20,
              ),
              Counter2River()
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
                  // context.read<CounterRiverPod>().reset();
                },
                tooltip: 'Clear',
                child: const Icon(Icons.clear_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  // context.read<CounterRiverPod>().inccremmentByTen();
                },
                tooltip: 'Increment By 10',
                child: const Icon(Icons.add_circle_outline_rounded),
              ),
              FloatingActionButton(
                  onPressed: () {
                    // context.read<CounterRiverPod>().decremment();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove_sharp)),
              FloatingActionButton(
                onPressed: () {},
                // context.read(counterriverpod.notifier).incremment(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
