import 'package:flutter/material.dart';

class ProgressSliderBarPage extends StatefulWidget {
  const ProgressSliderBarPage({super.key});

  @override
  State<ProgressSliderBarPage> createState() => _ProgressSliderBarPageState();
}

class _ProgressSliderBarPageState extends State<ProgressSliderBarPage> {
  double ilerleme = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Slider Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  LinearProgressIndicator(
                    value: ilerleme / 100,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.blue),
                    minHeight: 13,
                  ),
                ],
              ),
            ),
            Text("${ilerleme.toInt()} %",
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Slider(
                    max: 100.0,
                    min: 0.0,
                    value: ilerleme,
                    onChanged: (double i) {
                      setState(() {
                        ilerleme = i;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
