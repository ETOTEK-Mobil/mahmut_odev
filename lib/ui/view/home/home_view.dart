import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_1/hafta_1_view.dart';
import 'package:odev/ui/view/hafta_2/hafta_2_view.dart';
import 'package:odev/ui/view/hafta_3/hafta_3_view.dart';
import 'package:odev/ui/view/hafta_4/hafta_4_view.dart';
import 'package:odev/ui/view/hafta_5/hafta_5_view.dart';
import 'package:odev/ui/view/hafta_6/hafta_6_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> _tabs = [
    const Hafta1View(),
    const Hafta2View(),
    const Hafta3View(),
    const Hafta4View(),
    const Hafta5View(),
    const Hafta6View()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${currentIndex + 1}. Hafta'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ...List.generate(_tabs.length, (index) {
              return ListTile(
                title: Text('${index + 1}. Hafta'),
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                  Navigator.pop(context);
                },
              );
            }),
          ],
        ),
      ),
      body: _tabs[currentIndex],
    );
  }
}
