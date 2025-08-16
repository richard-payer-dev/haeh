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
import 'dart:async' as _i2;
import 'package:haeh_client/src/protocol/greeting.dart' as _i3;
import 'package:haeh_client/src/protocol/recipes/question.dart' as _i4;
import 'package:haeh_client/src/protocol/recipes/translation.dart' as _i5;
import 'protocol.dart' as _i6;

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i3.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i3.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointQuestion extends _i1.EndpointRef {
  EndpointQuestion(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'question';

  _i2.Future<List<_i4.Question>> getQuestions() =>
      caller.callServerEndpoint<List<_i4.Question>>(
        'question',
        'getQuestions',
        {},
      );
}

/// {@category Endpoint}
class EndpointTranslation extends _i1.EndpointRef {
  EndpointTranslation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'translation';

  _i2.Future<List<_i5.Translation>> getTranslations() =>
      caller.callServerEndpoint<List<_i5.Translation>>(
        'translation',
        'getTranslations',
        {},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    greeting = EndpointGreeting(this);
    question = EndpointQuestion(this);
    translation = EndpointTranslation(this);
  }

  late final EndpointGreeting greeting;

  late final EndpointQuestion question;

  late final EndpointTranslation translation;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'greeting': greeting,
        'question': question,
        'translation': translation,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
