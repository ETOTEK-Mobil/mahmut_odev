import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_1/pages/counter_page.dart';
import 'package:odev/ui/view/hafta_1/pages/row_column_stack_page.dart';

class Hafta1View extends StatelessWidget {
  const Hafta1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
