import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key});

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  var secilenTarih = TextEditingController();
  var secilenSaat = TextEditingController();
  String? secilenSehir;
  List<String> cities = [
    'Ankara',
    'İstanbul',
    'İzmir',
    'Antalya',
    'Adana',
    'Bursa',
    'Konya',
    'Trabzon',
    'Samsun',
    'Gaziantep',
  ];
  int mediaQueryData() => MediaQuery.of(context).size.width.toInt();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Şehir Seç:",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 16))),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: mediaQueryData() - 15,
              child: DropdownButton(
                hint: const Text('Şehir Seçiniz'),
                items: cities.map((String city) {
                  return DropdownMenuItem(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    secilenSehir = value;
                  });
                },
                isExpanded: true,
                value: secilenSehir,
                icon: const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down)),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Zaman Seç:",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 16))),
            const SizedBox(height: 5),
            TextField(
              controller: secilenSaat,
              decoration: const InputDecoration(
                hintText: 'Saat Seçiniz',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.access_time),
                filled: true,
                fillColor: Colors.white12,
              ),
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((value) {
                  setState(() {
                    String hour = value!.hour < 10
                        ? "0${value.hour}"
                        : value.hour.toString();
                    String minute = value.minute < 10
                        ? "0${value.minute}"
                        : value.minute.toString();
                    secilenSaat.text = "$hour:$minute";
                  });
                });
              },
            ),
            const SizedBox(height: 15),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Tarih Seç:",
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 16))),
            const SizedBox(height: 5),
            TextField(
              controller: secilenTarih,
              decoration: const InputDecoration(
                hintText: 'Tarih Seçiniz',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
                filled: true,
                fillColor: Colors.white12,
              ),
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                ).then((date) {
                  setState(() {
                    secilenTarih.text =
                        "${date!.day}/${date.month}/${date.year}";
                  });
                });
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: mediaQueryData() / 2,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      if (secilenSehir != null)
                        Text("Seçilen Şehir: $secilenSehir"),
                      if (secilenSehir == null) const Text("Şehir Seçilmedi"),
                      Text("Seçilen Saat: ${secilenSaat.text}"),
                      Text("Seçilen Tarih: ${secilenTarih.text}"),
                      const SizedBox(height: 10),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
