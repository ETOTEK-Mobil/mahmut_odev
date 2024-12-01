import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  bool isOpen = false;
  bool isSelected1 = false;
  int selectedRadio = 0;
  var toggleButtons = [false, false, false];
  int selectedToggle = 0;
  get mediaQueryData => MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Butonlar"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Switch",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(isOpen ? "Açık" : "Kapalı", style: const TextStyle(fontSize: 17)),
                        const Spacer(),
                        Switch(
                            value: isOpen,
                            onChanged: (veri) {
                              setState(() {
                                isOpen = veri;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "CheckBox",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      value: isSelected1,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (checkVeri) {
                        setState(() {
                          isSelected1 = checkVeri!;
                        });
                      },
                      title: const Text("Beni Hatırla"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Radio",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RadioListTile<int>(
                        value: 1,
                        groupValue: selectedRadio,
                        title: const Text("Seçenek 1"),
                        onChanged: (radioVeri) {
                          setState(() {
                            selectedRadio = radioVeri!;
                          });
                        },
                      ),
                      RadioListTile<int>(
                        value: 2,
                        groupValue: selectedRadio,
                        title: const Text("Seçenek 2"),
                        onChanged: (radioVeri) {
                          setState(() {
                            selectedRadio = radioVeri!;
                          });
                        },
                      ),
                    ],
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Toggle Buttons",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ToggleButtons(
                    isSelected: toggleButtons,
                    onPressed: (selectedToggle) {
                      setState(() {
                        toggleButtons[selectedToggle] = !toggleButtons[selectedToggle];
                      });
                    },
                    children: const [
                      Icon(Icons.format_bold),
                      Icon(Icons.format_italic),
                      Icon(Icons.format_underline),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
