import 'package:cubit_2/cubit/counter_cubit.dart';
import 'package:cubit_2/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CubitProvider(
        create: (context) => CounterCubit(),
        child: HomePage(),
      ),
    );
  }
}
