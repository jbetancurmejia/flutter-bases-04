import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            //Text((clickCounter>1)?"Clicks":"Click", style: const TextStyle(fontSize: 25))
            Text('Click${(clickCounter != 1) ? 's' : ''}',
                style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
