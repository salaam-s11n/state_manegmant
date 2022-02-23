import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';
import 'package:state_manegmant/Block/bloc/counter_block.dart';
import 'package:state_manegmant/Block/ui/counter_main_block.dart';
import 'package:state_manegmant/Getx/view/counter_main_get.dart';

import 'Getx/controller/getxcontroller.dart';
import 'Provider/counter_main.dart';
import 'Provider/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CounterGetx());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // themeMode: Provider.of<CounterProvider>(context).theam,
      // darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      // theme: ThemeData(primarySwatch: Colors.teal),
      // home:
      home: Container(
        color: Colors.white.withOpacity(0.2),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            ChangeNotifierProvider(
              create: (_) => CounterProvider(),
              child: const MyHomePage(),
            ),
            MyHomePageGetX(),
            BlocProvider(
              create: (_) => CounterBlock(),
              child: const MyHomePageBlock(),
            ),
            // ProviderScope(
            //   child: MyHomePageRiver(),
            // ),
          ],
        ),
      ),
    );
  }
}
