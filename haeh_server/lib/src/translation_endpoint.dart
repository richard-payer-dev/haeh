import 'package:haeh_server/src/generated/recipes/translation.dart';
import 'package:serverpod/serverpod.dart';

class TranslationEndpoint extends Endpoint {
  Future<List<Translation>> getTranslations(Session session) async {
    return Translation.db.find(session, limit: 500);
  }
}
