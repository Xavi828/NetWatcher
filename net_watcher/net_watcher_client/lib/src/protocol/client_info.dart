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

abstract class ClientInfo implements _i1.SerializableModel {
  ClientInfo._({
    required this.ipAddress,
    required this.macAddress,
    required this.hostname,
    required this.os,
  });

  factory ClientInfo({
    required String ipAddress,
    required String macAddress,
    required String hostname,
    required String os,
  }) = _ClientInfoImpl;

  factory ClientInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return ClientInfo(
      ipAddress: jsonSerialization['ipAddress'] as String,
      macAddress: jsonSerialization['macAddress'] as String,
      hostname: jsonSerialization['hostname'] as String,
      os: jsonSerialization['os'] as String,
    );
  }

  String ipAddress;

  String macAddress;

  String hostname;

  String os;

  /// Returns a shallow copy of this [ClientInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ClientInfo copyWith({
    String? ipAddress,
    String? macAddress,
    String? hostname,
    String? os,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'ipAddress': ipAddress,
      'macAddress': macAddress,
      'hostname': hostname,
      'os': os,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _ClientInfoImpl extends ClientInfo {
  _ClientInfoImpl({
    required String ipAddress,
    required String macAddress,
    required String hostname,
    required String os,
  }) : super._(
          ipAddress: ipAddress,
          macAddress: macAddress,
          hostname: hostname,
          os: os,
        );

  /// Returns a shallow copy of this [ClientInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ClientInfo copyWith({
    String? ipAddress,
    String? macAddress,
    String? hostname,
    String? os,
  }) {
    return ClientInfo(
      ipAddress: ipAddress ?? this.ipAddress,
      macAddress: macAddress ?? this.macAddress,
      hostname: hostname ?? this.hostname,
      os: os ?? this.os,
    );
  }
}
