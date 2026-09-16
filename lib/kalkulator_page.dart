import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Angka pertama",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Angka kedua",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("+")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
                ElevatedButton(onPressed: () {}, child: Text("×")),
                ElevatedButton(onPressed: () {}, child: Text("÷")),
              ],
            ),

            SizedBox(height: 20),

            Text("Hasil: 0", style: TextStyle(fontSize: 20)),

            SizedBox(height: 20),

            ElevatedButton(onPressed: () {}, child: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
