import 'answer.dart';

class Question {
  String question;
  String category;
  String imageURL;
  List<Answer> answers;

  Question(
      {required this.question,
      required this.category,
      required this.imageURL,
      required this.answers});

  (String, String, String, List<Answer>) getData() {
    return (question, category, imageURL, answers);
  }
}
