import 'package:haeh_server/src/generated/recipes/question.dart';
import 'package:serverpod/serverpod.dart';

class QuestionEndpoint extends Endpoint {
  Future<List<Question>> getTranslations(Session session) async {
    return Question.db.find(session, limit: 500);
  }
}
