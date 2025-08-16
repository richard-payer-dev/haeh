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

abstract class SoundBites implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String url;

  String category;

  String name;

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
