import 'package:haeh_server/src/generated/recipes/answer.dart';
import 'package:haeh_server/src/generated/recipes/question.dart';
import 'package:serverpod/serverpod.dart';

class QuestionEndpoint extends Endpoint {
  Future<List<Question>> getQuestions(Session session) async {
    return Question.db.find(session,
        limit: 500, include: Question.include(answers: Answer.includeList()));
  }
}
