import 'package:haeh_server/src/generated/recipes/sound_bites.dart';
import 'package:serverpod/serverpod.dart';

class SoundBitesEndpoint extends Endpoint {
  Future<List<SoundBites>> getSoundBites(Session session) async {
    return SoundBites.db.find(session, limit: 500);
  }
}
