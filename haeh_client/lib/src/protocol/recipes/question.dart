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
import '../recipes/answer.dart' as _i2;

abstract class Question implements _i1.SerializableModel {
  Question._({
    this.id,
    required this.audioPath,
    required this.category,
    this.answers,
  });

  factory Question({
    int? id,
    required String audioPath,
    required String category,
    List<_i2.Answer>? answers,
  }) = _QuestionImpl;

  factory Question.fromJson(Map<String, dynamic> jsonSerialization) {
    return Question(
      id: jsonSerialization['id'] as int?,
      audioPath: jsonSerialization['audioPath'] as String,
      category: jsonSerialization['category'] as String,
      answers: (jsonSerialization['answers'] as List?)
          ?.map((e) => _i2.Answer.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String audioPath;

  String category;

  List<_i2.Answer>? answers;

  /// Returns a shallow copy of this [Question]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Question copyWith({
    int? id,
    String? audioPath,
    String? category,
    List<_i2.Answer>? answers,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'audioPath': audioPath,
      'category': category,
      if (answers != null)
        'answers': answers?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QuestionImpl extends Question {
  _QuestionImpl({
    int? id,
    required String audioPath,
    required String category,
    List<_i2.Answer>? answers,
  }) : super._(
          id: id,
          audioPath: audioPath,
          category: category,
          answers: answers,
        );

  /// Returns a shallow copy of this [Question]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Question copyWith({
    Object? id = _Undefined,
    String? audioPath,
    String? category,
    Object? answers = _Undefined,
  }) {
    return Question(
      id: id is int? ? id : this.id,
      audioPath: audioPath ?? this.audioPath,
      category: category ?? this.category,
      answers: answers is List<_i2.Answer>?
          ? answers
          : this.answers?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
