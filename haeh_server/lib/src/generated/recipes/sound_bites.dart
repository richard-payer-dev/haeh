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

abstract class SoundBites
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  SoundBites._({
    this.id,
    required this.url,
    required this.category,
    required this.name,
  });

  factory SoundBites({
    int? id,
    required String url,
    required String category,
    required String name,
  }) = _SoundBitesImpl;

  factory SoundBites.fromJson(Map<String, dynamic> jsonSerialization) {
    return SoundBites(
      id: jsonSerialization['id'] as int?,
      url: jsonSerialization['url'] as String,
      category: jsonSerialization['category'] as String,
      name: jsonSerialization['name'] as String,
    );
  }

  static final t = SoundBitesTable();

  static const db = SoundBitesRepository._();

  @override
  int? id;

  String url;

  String category;

  String name;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [SoundBites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SoundBites copyWith({
    int? id,
    String? url,
    String? category,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'url': url,
      'category': category,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'url': url,
      'category': category,
      'name': name,
    };
  }

  static SoundBitesInclude include() {
    return SoundBitesInclude._();
  }

  static SoundBitesIncludeList includeList({
    _i1.WhereExpressionBuilder<SoundBitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SoundBitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SoundBitesTable>? orderByList,
    SoundBitesInclude? include,
  }) {
    return SoundBitesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SoundBites.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SoundBites.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SoundBitesImpl extends SoundBites {
  _SoundBitesImpl({
    int? id,
    required String url,
    required String category,
    required String name,
  }) : super._(
          id: id,
          url: url,
          category: category,
          name: name,
        );

  /// Returns a shallow copy of this [SoundBites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SoundBites copyWith({
    Object? id = _Undefined,
    String? url,
    String? category,
    String? name,
  }) {
    return SoundBites(
      id: id is int? ? id : this.id,
      url: url ?? this.url,
      category: category ?? this.category,
      name: name ?? this.name,
    );
  }
}

class SoundBitesTable extends _i1.Table<int?> {
  SoundBitesTable({super.tableRelation}) : super(tableName: 'sound_bites') {
    url = _i1.ColumnString(
      'url',
      this,
    );
    category = _i1.ColumnString(
      'category',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnString url;

  late final _i1.ColumnString category;

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        url,
        category,
        name,
      ];
}

class SoundBitesInclude extends _i1.IncludeObject {
  SoundBitesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => SoundBites.t;
}

class SoundBitesIncludeList extends _i1.IncludeList {
  SoundBitesIncludeList._({
    _i1.WhereExpressionBuilder<SoundBitesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SoundBites.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => SoundBites.t;
}

class SoundBitesRepository {
  const SoundBitesRepository._();

  /// Returns a list of [SoundBites]s matching the given query parameters.
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
  Future<List<SoundBites>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SoundBitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SoundBitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SoundBitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SoundBites>(
      where: where?.call(SoundBites.t),
      orderBy: orderBy?.call(SoundBites.t),
      orderByList: orderByList?.call(SoundBites.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [SoundBites] matching the given query parameters.
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
  Future<SoundBites?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SoundBitesTable>? where,
    int? offset,
    _i1.OrderByBuilder<SoundBitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SoundBitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<SoundBites>(
      where: where?.call(SoundBites.t),
      orderBy: orderBy?.call(SoundBites.t),
      orderByList: orderByList?.call(SoundBites.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [SoundBites] by its [id] or null if no such row exists.
  Future<SoundBites?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<SoundBites>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [SoundBites]s in the list and returns the inserted rows.
  ///
  /// The returned [SoundBites]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<SoundBites>> insert(
    _i1.Session session,
    List<SoundBites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<SoundBites>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [SoundBites] and returns the inserted row.
  ///
  /// The returned [SoundBites] will have its `id` field set.
  Future<SoundBites> insertRow(
    _i1.Session session,
    SoundBites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SoundBites>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SoundBites]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SoundBites>> update(
    _i1.Session session,
    List<SoundBites> rows, {
    _i1.ColumnSelections<SoundBitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SoundBites>(
      rows,
      columns: columns?.call(SoundBites.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SoundBites]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SoundBites> updateRow(
    _i1.Session session,
    SoundBites row, {
    _i1.ColumnSelections<SoundBitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SoundBites>(
      row,
      columns: columns?.call(SoundBites.t),
      transaction: transaction,
    );
  }

  /// Deletes all [SoundBites]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SoundBites>> delete(
    _i1.Session session,
    List<SoundBites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SoundBites>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SoundBites].
  Future<SoundBites> deleteRow(
    _i1.Session session,
    SoundBites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SoundBites>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SoundBites>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SoundBitesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SoundBites>(
      where: where(SoundBites.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SoundBitesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SoundBites>(
      where: where?.call(SoundBites.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
