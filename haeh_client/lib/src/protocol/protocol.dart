/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'greeting.dart' as _i2;
import 'recipes/answer.dart' as _i3;
import 'recipes/question.dart' as _i4;
import 'recipes/sound_bites.dart' as _i5;
import 'recipes/translation.dart' as _i6;
import 'package:haeh_client/src/protocol/recipes/question.dart' as _i7;
import 'package:haeh_client/src/protocol/recipes/sound_bites.dart' as _i8;
import 'package:haeh_client/src/protocol/recipes/translation.dart' as _i9;
export 'greeting.dart';
export 'recipes/answer.dart';
export 'recipes/question.dart';
export 'recipes/sound_bites.dart';
export 'recipes/translation.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.Answer) {
      return _i3.Answer.fromJson(data) as T;
    }
    if (t == _i4.Question) {
      return _i4.Question.fromJson(data) as T;
    }
    if (t == _i5.SoundBites) {
      return _i5.SoundBites.fromJson(data) as T;
    }
    if (t == _i6.Translation) {
      return _i6.Translation.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Answer?>()) {
      return (data != null ? _i3.Answer.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Question?>()) {
      return (data != null ? _i4.Question.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.SoundBites?>()) {
      return (data != null ? _i5.SoundBites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Translation?>()) {
      return (data != null ? _i6.Translation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i3.Answer>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Answer>(e)).toList()
          : null) as T;
    }
    if (t == List<_i7.Question>) {
      return (data as List).map((e) => deserialize<_i7.Question>(e)).toList()
          as T;
    }
    if (t == List<_i8.SoundBites>) {
      return (data as List).map((e) => deserialize<_i8.SoundBites>(e)).toList()
          as T;
    }
    if (t == List<_i9.Translation>) {
      return (data as List).map((e) => deserialize<_i9.Translation>(e)).toList()
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Greeting) {
      return 'Greeting';
    }
    if (data is _i3.Answer) {
      return 'Answer';
    }
    if (data is _i4.Question) {
      return 'Question';
    }
    if (data is _i5.SoundBites) {
      return 'SoundBites';
    }
    if (data is _i6.Translation) {
      return 'Translation';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'Answer') {
      return deserialize<_i3.Answer>(data['data']);
    }
    if (dataClassName == 'Question') {
      return deserialize<_i4.Question>(data['data']);
    }
    if (dataClassName == 'SoundBites') {
      return deserialize<_i5.SoundBites>(data['data']);
    }
    if (dataClassName == 'Translation') {
      return deserialize<_i6.Translation>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
