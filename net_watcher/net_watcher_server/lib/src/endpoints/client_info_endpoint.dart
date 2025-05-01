import '../generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ClientInfoEndpoint extends Endpoint {

  Future<ClientInfo> hello(Session session, String ipAddress, String macAddress, String hostname, String os) async {
    return ClientInfo(
      ipAddress: ipAddress,
      macAddress: macAddress,
      hostname: hostname,
      os: os
    );
  }
}
