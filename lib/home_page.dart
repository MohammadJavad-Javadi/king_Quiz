import 'package:flutter/material.dart';
import 'package:quizz_like_application/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          'سوال پادشاه',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image(image: AssetImage('images/welcome.png')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo[700],
                  minimumSize: Size(200, 40)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const QuizPage()));
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
