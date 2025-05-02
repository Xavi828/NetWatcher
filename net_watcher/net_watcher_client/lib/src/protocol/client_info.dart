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
    this.id,
    required this.ipAddress,
    required this.macAddress,
    required this.hostname,
    required this.os,
    required this.createdAt,
  });

  factory ClientInfo({
    int? id,
    required String ipAddress,
    required String macAddress,
    required String hostname,
    required String os,
    required DateTime createdAt,
  }) = _ClientInfoImpl;

  factory ClientInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return ClientInfo(
      id: jsonSerialization['id'] as int?,
      ipAddress: jsonSerialization['ipAddress'] as String,
      macAddress: jsonSerialization['macAddress'] as String,
      hostname: jsonSerialization['hostname'] as String,
      os: jsonSerialization['os'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String ipAddress;

  String macAddress;

  String hostname;

  String os;

  DateTime createdAt;

  /// Returns a shallow copy of this [ClientInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ClientInfo copyWith({
    int? id,
    String? ipAddress,
    String? macAddress,
    String? hostname,
    String? os,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ipAddress': ipAddress,
      'macAddress': macAddress,
      'hostname': hostname,
      'os': os,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ClientInfoImpl extends ClientInfo {
  _ClientInfoImpl({
    int? id,
    required String ipAddress,
    required String macAddress,
    required String hostname,
    required String os,
    required DateTime createdAt,
  }) : super._(
          id: id,
          ipAddress: ipAddress,
          macAddress: macAddress,
          hostname: hostname,
          os: os,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [ClientInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ClientInfo copyWith({
    Object? id = _Undefined,
    String? ipAddress,
    String? macAddress,
    String? hostname,
    String? os,
    DateTime? createdAt,
  }) {
    return ClientInfo(
      id: id is int? ? id : this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      macAddress: macAddress ?? this.macAddress,
      hostname: hostname ?? this.hostname,
      os: os ?? this.os,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
