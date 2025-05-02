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
import '../endpoints/client_info_endpoint.dart' as _i2;
import 'package:net_watcher_server/src/generated/client_info.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'clientInfo': _i2.ClientInfoEndpoint()
        ..initialize(
          server,
          'clientInfo',
          null,
        )
    };
    connectors['clientInfo'] = _i1.EndpointConnector(
      name: 'clientInfo',
      endpoint: endpoints['clientInfo']!,
      methodConnectors: {
        'saveClientInfo': _i1.MethodConnector(
          name: 'saveClientInfo',
          params: {
            'clientInfo': _i1.ParameterDescription(
              name: 'clientInfo',
              type: _i1.getType<_i3.ClientInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['clientInfo'] as _i2.ClientInfoEndpoint)
                  .saveClientInfo(
            session,
            params['clientInfo'],
          ),
        ),
        'saveMultipleClientInfo': _i1.MethodConnector(
          name: 'saveMultipleClientInfo',
          params: {
            'clientInfoList': _i1.ParameterDescription(
              name: 'clientInfoList',
              type: _i1.getType<List<_i3.ClientInfo>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['clientInfo'] as _i2.ClientInfoEndpoint)
                  .saveMultipleClientInfo(
            session,
            params['clientInfoList'],
          ),
        ),
        'getAllClientInfo': _i1.MethodConnector(
          name: 'getAllClientInfo',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['clientInfo'] as _i2.ClientInfoEndpoint)
                  .getAllClientInfo(session),
        ),
      },
    );
  }
}
