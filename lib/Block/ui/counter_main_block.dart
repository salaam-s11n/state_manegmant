import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:state_manegmant/Block/bloc/counter_block.dart';
import 'package:state_manegmant/Block/ui/counter1_block.dart';
import 'package:state_manegmant/Block/ui/counter2_block.dart';

class MyHomePageBlock extends StatelessWidget {
  const MyHomePageBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Block"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Counter1Block(),
              SizedBox(
                height: 20,
              ),
              Counter2Block()
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
                  context.read<CounterBlock>().reset();
                },
                tooltip: 'Clear',
                child: const Icon(Icons.clear_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBlock>().inccremmentByTen();
                },
                tooltip: 'Increment By 10',
                child: const Icon(Icons.add_circle_outline_rounded),
              ),
              FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBlock>().decremment();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove_sharp)),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBlock>().incremment();
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
