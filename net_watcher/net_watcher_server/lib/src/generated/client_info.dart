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

abstract class ClientInfo
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ClientInfoTable();

  static const db = ClientInfoRepository._();

  @override
  int? id;

  String ipAddress;

  String macAddress;

  String hostname;

  String os;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ipAddress': ipAddress,
      'macAddress': macAddress,
      'hostname': hostname,
      'os': os,
      'createdAt': createdAt.toJson(),
    };
  }

  static ClientInfoInclude include() {
    return ClientInfoInclude._();
  }

  static ClientInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<ClientInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ClientInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClientInfoTable>? orderByList,
    ClientInfoInclude? include,
  }) {
    return ClientInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ClientInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ClientInfo.t),
      include: include,
    );
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

class ClientInfoTable extends _i1.Table<int?> {
  ClientInfoTable({super.tableRelation}) : super(tableName: 'client_info') {
    ipAddress = _i1.ColumnString(
      'ipAddress',
      this,
    );
    macAddress = _i1.ColumnString(
      'macAddress',
      this,
    );
    hostname = _i1.ColumnString(
      'hostname',
      this,
    );
    os = _i1.ColumnString(
      'os',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnString ipAddress;

  late final _i1.ColumnString macAddress;

  late final _i1.ColumnString hostname;

  late final _i1.ColumnString os;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        ipAddress,
        macAddress,
        hostname,
        os,
        createdAt,
      ];
}

class ClientInfoInclude extends _i1.IncludeObject {
  ClientInfoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ClientInfo.t;
}

class ClientInfoIncludeList extends _i1.IncludeList {
  ClientInfoIncludeList._({
    _i1.WhereExpressionBuilder<ClientInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ClientInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ClientInfo.t;
}

class ClientInfoRepository {
  const ClientInfoRepository._();

  /// Returns a list of [ClientInfo]s matching the given query parameters.
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
  Future<List<ClientInfo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ClientInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ClientInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClientInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ClientInfo>(
      where: where?.call(ClientInfo.t),
      orderBy: orderBy?.call(ClientInfo.t),
      orderByList: orderByList?.call(ClientInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ClientInfo] matching the given query parameters.
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
  Future<ClientInfo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ClientInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ClientInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ClientInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ClientInfo>(
      where: where?.call(ClientInfo.t),
      orderBy: orderBy?.call(ClientInfo.t),
      orderByList: orderByList?.call(ClientInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ClientInfo] by its [id] or null if no such row exists.
  Future<ClientInfo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ClientInfo>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ClientInfo]s in the list and returns the inserted rows.
  ///
  /// The returned [ClientInfo]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ClientInfo>> insert(
    _i1.Session session,
    List<ClientInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ClientInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ClientInfo] and returns the inserted row.
  ///
  /// The returned [ClientInfo] will have its `id` field set.
  Future<ClientInfo> insertRow(
    _i1.Session session,
    ClientInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ClientInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ClientInfo]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ClientInfo>> update(
    _i1.Session session,
    List<ClientInfo> rows, {
    _i1.ColumnSelections<ClientInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ClientInfo>(
      rows,
      columns: columns?.call(ClientInfo.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ClientInfo]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ClientInfo> updateRow(
    _i1.Session session,
    ClientInfo row, {
    _i1.ColumnSelections<ClientInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ClientInfo>(
      row,
      columns: columns?.call(ClientInfo.t),
      transaction: transaction,
    );
  }

  /// Deletes all [ClientInfo]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ClientInfo>> delete(
    _i1.Session session,
    List<ClientInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ClientInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ClientInfo].
  Future<ClientInfo> deleteRow(
    _i1.Session session,
    ClientInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ClientInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ClientInfo>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ClientInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ClientInfo>(
      where: where(ClientInfo.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ClientInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ClientInfo>(
      where: where?.call(ClientInfo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
