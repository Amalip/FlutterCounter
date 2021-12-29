import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increaseCounter() => setState(() {
        counter++;
      });

  void decreaseCounter() => setState(() {
        counter--;
      });

  void resetCounter() => setState(() {
        counter = 0;
      });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(title: const Text("CounterScreen"), elevation: 5),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Your counter is:",
            style: textStyle,
          ),
          Text(
            "$counter",
            style: textStyle,
          )
        ]),
      ),
      floatingActionButton: CustomFloatingActions(
          increaseFN: increaseCounter,
          decreaseFN: decreaseCounter,
          resetFN: resetCounter),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFN;
  final Function decreaseFN;
  final Function resetFN;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFN,
    required this.decreaseFN,
    required this.resetFN,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFN(),
          child: const Icon(Icons.exposure_minus_1),
          backgroundColor: Colors.red,
        ),
        FloatingActionButton(
          onPressed: () => resetFN(),
          child: const Icon(
            Icons.exposure_zero,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        FloatingActionButton(
          onPressed: () => increaseFN(),
          child: const Icon(Icons.plus_one),
          backgroundColor: Colors.green,
        )
      ],
    );
  }
}
