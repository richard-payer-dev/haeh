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
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  Translation._({
    required this.regexp,
    required this.translation,
  });

  factory Translation({
    required String regexp,
    required String translation,
  }) = _TranslationImpl;

  factory Translation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Translation(
      regexp: jsonSerialization['regexp'] as String,
      translation: jsonSerialization['translation'] as String,
    );
  }

  String regexp;

  String translation;

  /// Returns a shallow copy of this [Translation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Translation copyWith({
    String? regexp,
    String? translation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'regexp': regexp,
      'translation': translation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'regexp': regexp,
      'translation': translation,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _TranslationImpl extends Translation {
  _TranslationImpl({
    required String regexp,
    required String translation,
  }) : super._(
          regexp: regexp,
          translation: translation,
        );

  /// Returns a shallow copy of this [Translation]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Translation copyWith({
    String? regexp,
    String? translation,
  }) {
    return Translation(
      regexp: regexp ?? this.regexp,
      translation: translation ?? this.translation,
    );
  }
}
