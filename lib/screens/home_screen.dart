import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);

    int counter = 0;

    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen"), elevation: 5),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
