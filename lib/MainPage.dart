import 'package:flutter/material.dart';
import 'package:odev/CounterPage.dart';
import 'package:odev/RowColumnStackPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Main Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Rowcolumnstackpage()));
                  },
                  child: const Text("Row Column Stack Page",style: TextStyle(color: Colors.deepPurple)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const StateManagement()));
                  },
                  child: const Text("State Management Page",style: TextStyle(color: Colors.deepPurple)),
              ),
            ],
          ),
        ),
      );
  }
}
