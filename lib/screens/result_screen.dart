import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.resultAnswer});
  final int resultAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'نتایج آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(image: AssetImage('images/cup.png')),
            ),
            Text(
              'پاسخ های صحیح شما',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$resultAnswer',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
