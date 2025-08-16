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
import '../recipes/question.dart' as _i2;

abstract class Answer implements _i1.SerializableModel {
  Answer._({
    this.id,
    required this.isCorrect,
    required this.text,
    required this.questionId,
    this.question,
  });

  factory Answer({
    int? id,
    required bool isCorrect,
    required String text,
    required int questionId,
    _i2.Question? question,
  }) = _AnswerImpl;

  factory Answer.fromJson(Map<String, dynamic> jsonSerialization) {
    return Answer(
      id: jsonSerialization['id'] as int?,
      isCorrect: jsonSerialization['isCorrect'] as bool,
      text: jsonSerialization['text'] as String,
      questionId: jsonSerialization['questionId'] as int,
      question: jsonSerialization['question'] == null
          ? null
          : _i2.Question.fromJson(
              (jsonSerialization['question'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  bool isCorrect;

  String text;

  int questionId;

  _i2.Question? question;

  /// Returns a shallow copy of this [Answer]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Answer copyWith({
    int? id,
    bool? isCorrect,
    String? text,
    int? questionId,
    _i2.Question? question,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'isCorrect': isCorrect,
      'text': text,
      'questionId': questionId,
      if (question != null) 'question': question?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AnswerImpl extends Answer {
  _AnswerImpl({
    int? id,
    required bool isCorrect,
    required String text,
    required int questionId,
    _i2.Question? question,
  }) : super._(
          id: id,
          isCorrect: isCorrect,
          text: text,
          questionId: questionId,
          question: question,
        );

  /// Returns a shallow copy of this [Answer]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Answer copyWith({
    Object? id = _Undefined,
    bool? isCorrect,
    String? text,
    int? questionId,
    Object? question = _Undefined,
  }) {
    return Answer(
      id: id is int? ? id : this.id,
      isCorrect: isCorrect ?? this.isCorrect,
      text: text ?? this.text,
      questionId: questionId ?? this.questionId,
      question:
          question is _i2.Question? ? question : this.question?.copyWith(),
    );
  }
}
