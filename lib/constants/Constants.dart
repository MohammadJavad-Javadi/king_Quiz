import '../data/Question.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهور ترین شعبده باز جهان کیست؟';
  firstQuestion.ImageNumber = 1;
  firstQuestion.correctNumber = 2;
  firstQuestion.answerList = [
    'دیوید آپاستروف',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.ImageNumber = 2;
  secondQuestion.correctNumber = 0;
  secondQuestion.answerList = ['هند(شوروی سابق)', 'آمریکا', 'فرانسه', 'چین'];

  return [firstQuestion, secondQuestion];
}
