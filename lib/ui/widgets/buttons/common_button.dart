import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.page,
    required this.pageName,
  });
  final Widget page;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Text(pageName, style: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
