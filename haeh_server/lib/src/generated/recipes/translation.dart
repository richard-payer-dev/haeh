/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Translation
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Translation._({
    this.id,
    required this.regexp,
    required this.translation,
  });

  factory Translation({
    int? id,
    required String regexp,
    required String translation,
  }) = _TranslationImpl;

  factory Translation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Translation(
      id: jsonSerialization['id'] as int?,
      regexp: jsonSerialization['regexp'] as String,
      translation: jsonSerialization['translation'] as String,
    );
  }

  static final t = TranslationTable();

  static const db = TranslationRepository._();

  @override
  int? id;

  String regexp;

  String translation;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Translation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Translation copyWith({
    int? id,
    String? regexp,
    String? translation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'regexp': regexp,
      'translation': translation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'regexp': regexp,
      'translation': translation,
    };
  }

  static TranslationInclude include() {
    return TranslationInclude._();
  }

  static TranslationIncludeList includeList({
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    TranslationInclude? include,
  }) {
    return TranslationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Translation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Translation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TranslationImpl extends Translation {
  _TranslationImpl({
    int? id,
    required String regexp,
    required String translation,
  }) : super._(
          id: id,
          regexp: regexp,
          translation: translation,
        );

  /// Returns a shallow copy of this [Translation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Translation copyWith({
    Object? id = _Undefined,
    String? regexp,
    String? translation,
  }) {
    return Translation(
      id: id is int? ? id : this.id,
      regexp: regexp ?? this.regexp,
      translation: translation ?? this.translation,
    );
  }
}

class TranslationTable extends _i1.Table<int?> {
  TranslationTable({super.tableRelation}) : super(tableName: 'translation') {
    regexp = _i1.ColumnString(
      'regexp',
      this,
    );
    translation = _i1.ColumnString(
      'translation',
      this,
    );
  }

  late final _i1.ColumnString regexp;

  late final _i1.ColumnString translation;

  @override
  List<_i1.Column> get columns => [
        id,
        regexp,
        translation,
      ];
}

class TranslationInclude extends _i1.IncludeObject {
  TranslationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Translation.t;
}

class TranslationIncludeList extends _i1.IncludeList {
  TranslationIncludeList._({
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Translation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Translation.t;
}

class TranslationRepository {
  const TranslationRepository._();

  /// Returns a list of [Translation]s matching the given query parameters.
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
  Future<List<Translation>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Translation>(
      where: where?.call(Translation.t),
      orderBy: orderBy?.call(Translation.t),
      orderByList: orderByList?.call(Translation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Translation] matching the given query parameters.
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
  Future<Translation?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Translation>(
      where: where?.call(Translation.t),
      orderBy: orderBy?.call(Translation.t),
      orderByList: orderByList?.call(Translation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Translation] by its [id] or null if no such row exists.
  Future<Translation?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Translation>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Translation]s in the list and returns the inserted rows.
  ///
  /// The returned [Translation]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Translation>> insert(
    _i1.Session session,
    List<Translation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Translation>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Translation] and returns the inserted row.
  ///
  /// The returned [Translation] will have its `id` field set.
  Future<Translation> insertRow(
    _i1.Session session,
    Translation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Translation>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Translation]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Translation>> update(
    _i1.Session session,
    List<Translation> rows, {
    _i1.ColumnSelections<TranslationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Translation>(
      rows,
      columns: columns?.call(Translation.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Translation]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Translation> updateRow(
    _i1.Session session,
    Translation row, {
    _i1.ColumnSelections<TranslationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Translation>(
      row,
      columns: columns?.call(Translation.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Translation]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Translation>> delete(
    _i1.Session session,
    List<Translation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Translation>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Translation].
  Future<Translation> deleteRow(
    _i1.Session session,
    Translation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Translation>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Translation>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TranslationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Translation>(
      where: where(Translation.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Translation>(
      where: where?.call(Translation.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
