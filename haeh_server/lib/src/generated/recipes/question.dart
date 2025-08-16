/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../recipes/answer.dart' as _i2;

abstract class Question
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Question._({
    this.id,
    required this.audioPath,
    this.answers,
  });

  factory Question({
    int? id,
    required String audioPath,
    List<_i2.Answer>? answers,
  }) = _QuestionImpl;

  factory Question.fromJson(Map<String, dynamic> jsonSerialization) {
    return Question(
      id: jsonSerialization['id'] as int?,
      audioPath: jsonSerialization['audioPath'] as String,
      answers: (jsonSerialization['answers'] as List?)
          ?.map((e) => _i2.Answer.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = QuestionTable();

  static const db = QuestionRepository._();

  @override
  int? id;

  String audioPath;

  List<_i2.Answer>? answers;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Question]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Question copyWith({
    int? id,
    String? audioPath,
    List<_i2.Answer>? answers,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'audioPath': audioPath,
      if (answers != null)
        'answers': answers?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'audioPath': audioPath,
      if (answers != null)
        'answers': answers?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static QuestionInclude include({_i2.AnswerIncludeList? answers}) {
    return QuestionInclude._(answers: answers);
  }

  static QuestionIncludeList includeList({
    _i1.WhereExpressionBuilder<QuestionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuestionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionTable>? orderByList,
    QuestionInclude? include,
  }) {
    return QuestionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Question.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Question.t),
      include: include,
    );
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
    List<_i2.Answer>? answers,
  }) : super._(
          id: id,
          audioPath: audioPath,
          answers: answers,
        );

  /// Returns a shallow copy of this [Question]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Question copyWith({
    Object? id = _Undefined,
    String? audioPath,
    Object? answers = _Undefined,
  }) {
    return Question(
      id: id is int? ? id : this.id,
      audioPath: audioPath ?? this.audioPath,
      answers: answers is List<_i2.Answer>?
          ? answers
          : this.answers?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class QuestionTable extends _i1.Table<int?> {
  QuestionTable({super.tableRelation}) : super(tableName: 'question') {
    audioPath = _i1.ColumnString(
      'audioPath',
      this,
    );
  }

  late final _i1.ColumnString audioPath;

  _i2.AnswerTable? ___answers;

  _i1.ManyRelation<_i2.AnswerTable>? _answers;

  _i2.AnswerTable get __answers {
    if (___answers != null) return ___answers!;
    ___answers = _i1.createRelationTable(
      relationFieldName: '__answers',
      field: Question.t.id,
      foreignField: _i2.Answer.t.questionId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AnswerTable(tableRelation: foreignTableRelation),
    );
    return ___answers!;
  }

  _i1.ManyRelation<_i2.AnswerTable> get answers {
    if (_answers != null) return _answers!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'answers',
      field: Question.t.id,
      foreignField: _i2.Answer.t.questionId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AnswerTable(tableRelation: foreignTableRelation),
    );
    _answers = _i1.ManyRelation<_i2.AnswerTable>(
      tableWithRelations: relationTable,
      table: _i2.AnswerTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _answers!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        audioPath,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'answers') {
      return __answers;
    }
    return null;
  }
}

class QuestionInclude extends _i1.IncludeObject {
  QuestionInclude._({_i2.AnswerIncludeList? answers}) {
    _answers = answers;
  }

  _i2.AnswerIncludeList? _answers;

  @override
  Map<String, _i1.Include?> get includes => {'answers': _answers};

  @override
  _i1.Table<int?> get table => Question.t;
}

class QuestionIncludeList extends _i1.IncludeList {
  QuestionIncludeList._({
    _i1.WhereExpressionBuilder<QuestionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Question.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Question.t;
}

class QuestionRepository {
  const QuestionRepository._();

  final attach = const QuestionAttachRepository._();

  final attachRow = const QuestionAttachRowRepository._();

  /// Returns a list of [Question]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Question>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuestionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionTable>? orderByList,
    _i1.Transaction? transaction,
    QuestionInclude? include,
  }) async {
    return session.db.find<Question>(
      where: where?.call(Question.t),
      orderBy: orderBy?.call(Question.t),
      orderByList: orderByList?.call(Question.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Question] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Question?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionTable>? where,
    int? offset,
    _i1.OrderByBuilder<QuestionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionTable>? orderByList,
    _i1.Transaction? transaction,
    QuestionInclude? include,
  }) async {
    return session.db.findFirstRow<Question>(
      where: where?.call(Question.t),
      orderBy: orderBy?.call(Question.t),
      orderByList: orderByList?.call(Question.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Question] by its [id] or null if no such row exists.
  Future<Question?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    QuestionInclude? include,
  }) async {
    return session.db.findById<Question>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Question]s in the list and returns the inserted rows.
  ///
  /// The returned [Question]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Question>> insert(
    _i1.Session session,
    List<Question> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Question>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Question] and returns the inserted row.
  ///
  /// The returned [Question] will have its `id` field set.
  Future<Question> insertRow(
    _i1.Session session,
    Question row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Question>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Question]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Question>> update(
    _i1.Session session,
    List<Question> rows, {
    _i1.ColumnSelections<QuestionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Question>(
      rows,
      columns: columns?.call(Question.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Question]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Question> updateRow(
    _i1.Session session,
    Question row, {
    _i1.ColumnSelections<QuestionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Question>(
      row,
      columns: columns?.call(Question.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Question]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Question>> delete(
    _i1.Session session,
    List<Question> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Question>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Question].
  Future<Question> deleteRow(
    _i1.Session session,
    Question row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Question>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Question>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<QuestionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Question>(
      where: where(Question.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Question>(
      where: where?.call(Question.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class QuestionAttachRepository {
  const QuestionAttachRepository._();

  /// Creates a relation between this [Question] and the given [Answer]s
  /// by setting each [Answer]'s foreign key `questionId` to refer to this [Question].
  Future<void> answers(
    _i1.Session session,
    Question question,
    List<_i2.Answer> answer, {
    _i1.Transaction? transaction,
  }) async {
    if (answer.any((e) => e.id == null)) {
      throw ArgumentError.notNull('answer.id');
    }
    if (question.id == null) {
      throw ArgumentError.notNull('question.id');
    }

    var $answer =
        answer.map((e) => e.copyWith(questionId: question.id)).toList();
    await session.db.update<_i2.Answer>(
      $answer,
      columns: [_i2.Answer.t.questionId],
      transaction: transaction,
    );
  }
}

class QuestionAttachRowRepository {
  const QuestionAttachRowRepository._();

  /// Creates a relation between this [Question] and the given [Answer]
  /// by setting the [Answer]'s foreign key `questionId` to refer to this [Question].
  Future<void> answers(
    _i1.Session session,
    Question question,
    _i2.Answer answer, {
    _i1.Transaction? transaction,
  }) async {
    if (answer.id == null) {
      throw ArgumentError.notNull('answer.id');
    }
    if (question.id == null) {
      throw ArgumentError.notNull('question.id');
    }

    var $answer = answer.copyWith(questionId: question.id);
    await session.db.updateRow<_i2.Answer>(
      $answer,
      columns: [_i2.Answer.t.questionId],
      transaction: transaction,
    );
  }
}
