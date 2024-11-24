import 'package:flutter/material.dart';
import 'package:odev/ResultPage.dart';

class StateManagement extends StatefulWidget {
  const StateManagement ({super.key});
  @override
  State<StateManagement> createState() => _State();
}

class _State extends State<StateManagement> {
  int counter = 0;
  void getCounter() {
    counter = counter;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("State Management Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text("Increment")
            ),
            const SizedBox(width: 20),
            ElevatedButton(onPressed: () {
              setState(() {
                if(counter > 0)
                counter--;
              });
            },
                child: const Text("Decrement")),
    ],
    ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resultpage(counter: counter)));
              });
            },
                child: const Text("View Result")),
          ],
        ),
      ),
    );
  }
}
