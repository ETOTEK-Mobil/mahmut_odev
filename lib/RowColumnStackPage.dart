import 'package:flutter/material.dart';

class Rowcolumnstackpage extends StatefulWidget  {
  const Rowcolumnstackpage({super.key});

  @override
  State<Rowcolumnstackpage> createState() => _RowcolumnstackpageState();
}

class _RowcolumnstackpageState extends State<Rowcolumnstackpage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Row Column Stack Page"),
      ),
      body:
      Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: screenWidth/2,
                        color: Colors.red,
                        child: const Center(
                          child:Text("Row 1", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: screenWidth/2,
                        color: Colors.green,
                        child: const Center(
                          child: Text("Row 2", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight/2,
                        color: Colors.blue,
                        child: const Center(
                          child: Text("Column 1", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: screenHeight/2,
                        color: Colors.yellow,
                        child: const Center(
                          child: Text("Column 2", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              width: 100,
              height: 100,
              child: const Center(
                child: Text("Stack", style: TextStyle(fontSize: 16)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
