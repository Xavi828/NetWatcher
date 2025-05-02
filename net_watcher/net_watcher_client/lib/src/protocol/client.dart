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
import 'package:net_watcher_client/src/protocol/client_info.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointClientInfo extends _i1.EndpointRef {
  EndpointClientInfo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'clientInfo';

  _i2.Future<void> saveClientInfo(_i3.ClientInfo clientInfo) =>
      caller.callServerEndpoint<void>(
        'clientInfo',
        'saveClientInfo',
        {'clientInfo': clientInfo},
      );

  _i2.Future<void> saveMultipleClientInfo(
          List<_i3.ClientInfo> clientInfoList) =>
      caller.callServerEndpoint<void>(
        'clientInfo',
        'saveMultipleClientInfo',
        {'clientInfoList': clientInfoList},
      );

  _i2.Future<List<_i3.ClientInfo>> getAllClientInfo() =>
      caller.callServerEndpoint<List<_i3.ClientInfo>>(
        'clientInfo',
        'getAllClientInfo',
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
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    clientInfo = EndpointClientInfo(this);
  }

  late final EndpointClientInfo clientInfo;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'clientInfo': clientInfo};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
