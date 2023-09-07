import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          // leading: IconButton(
          //   icon:  const Icon( Icons.refresh_rounded),
          //   onPressed: () {  },
          //    ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.exposure_minus_1,            
              onPressed: () {
                if (clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),

      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
