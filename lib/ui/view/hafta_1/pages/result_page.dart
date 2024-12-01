import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int counter;
  const ResultPage({super.key, required this.counter});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("State Management Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Result: $counter', style: const TextStyle(fontSize: 60)),
          ],
        ),
      ),
    );
  }
}
