import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:state_manegmant/Provider/counter1.dart';
import 'package:state_manegmant/Provider/counter2.dart';
import 'package:state_manegmant/Provider/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Provider.of<CounterProvider>(context).theam,
      darkTheme: ThemeData(primarySwatch: Colors.purple),
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: Provider.of<CounterProvider>(context).mood,
                onChanged: (value) {
                  Provider.of<CounterProvider>(context, listen: false)
                      .changeMood(value);
                },
                activeColor: Colors.white,
                inactiveThumbColor: Colors.white,
              )
            ],
            title: const Text("Provider"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Counter1(),
                SizedBox(
                  height: 20,
                ),
                Counter2()
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
                    Provider.of<CounterProvider>(context, listen: false)
                        .reset();
                  },
                  tooltip: 'Clear',
                  child: const Icon(Icons.clear_rounded),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .inccremmentByTen();
                  },
                  tooltip: 'Increment By 10',
                  child: const Icon(Icons.add_circle_outline_rounded),
                ),
                FloatingActionButton(
                    onPressed: () {
                      Provider.of<CounterProvider>(context, listen: false)
                          .decremment();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove_sharp)),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .incremment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ) // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
