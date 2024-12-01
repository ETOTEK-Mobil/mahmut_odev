import 'package:flutter/material.dart';
import 'package:odev/core/init/app_init.dart';
import 'package:odev/ui/view/home/home_view.dart';

void main() async {
  await AppInit.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
