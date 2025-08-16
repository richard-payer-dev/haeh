import 'package:haeh_server/src/generated/recipes/translation.dart';
import 'package:serverpod/serverpod.dart';

class TranslationEndpoint extends Endpoint {
  Future<List<Translation>> getTranslations(Session session) async {
    return List<Translation>.of([
      Translation(regexp: "regexp1", translation: "translation1"),
      Translation(regexp: "regexp2", translation: "translation2")
    ]);
  }
}
