import 'package:cubit_1/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

class HomePage extends StatelessWidget {
  final primaryColor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Flutter Cubit Example'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: '1',
            backgroundColor: primaryColor,
            onPressed: () {
              CubitProvider.of<CounterCubit>(context).decrement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: '0',
            backgroundColor: primaryColor,
            onPressed: () {
              CubitProvider.of<CounterCubit>(context).increment();
            },
            child: Icon(Icons.add, color: Colors.amber),
          ),
        ],
      ),
      body: CubitBuilder<CounterCubit, int>(
        builder: (_, count) => Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
