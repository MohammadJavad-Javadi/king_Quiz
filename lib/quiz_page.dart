import 'package:flutter/material.dart';
import 'package:quizz_like_application/constants/Constants.dart';
import 'package:quizz_like_application/data/Question.dart';
import 'package:quizz_like_application/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int indexOfQuestion = 0;
  Question? selectedQuestion;
  bool showResultButton = false;
  int correctAnswers = 0;
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[indexOfQuestion];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: Text(
          ' سوال ${indexOfQuestion + 1} از ${getQuestionsList().length}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/${selectedQuestion!.ImageNumber}.png'),
              width: 300,
            ),
            SizedBox(height: 30),
            Text(
              getQuestionsList()[indexOfQuestion].questionTitle!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            ...List.generate(4, (index) => getQuestionAnswers(index)),
            Visibility(
              visible: showResultButton,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  minimumSize: Size(200, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              resultAnswer: correctAnswers,
                            )),
                  );
                },
                child: Text(
                  'مشاهده نتایج آزمون',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getQuestionAnswers(int index) {
    return ListTile(
      title: Text(getQuestionsList()[indexOfQuestion].answerList![index]),
      onTap: () {
        if (index == selectedQuestion!.correctNumber) {
          print('correct');
          correctAnswers++;
        } else {
          print('wrong');
        }
        if (indexOfQuestion < getQuestionsList().length - 1) {
          setState(() {
            indexOfQuestion++;
          });
        } else if (indexOfQuestion == getQuestionsList().length - 1) {
          setState(() {
            showResultButton = true;
          });
        }
      },
    );
  }
}
