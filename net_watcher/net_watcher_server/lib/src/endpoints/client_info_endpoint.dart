import '../generated/protocol.dart';
import 'package:serverpod/server.dart';

class ClientInfoEndpoint extends Endpoint {
  Future<void> saveClientInfo(
    /// Función para guardar en la base de datos los datos de un solo cliente
    Session session,
    ClientInfo clientInfo,
  ) 
  async {
    try {
      clientInfo.createdAt = DateTime.now();
      await session.db.insertRow(clientInfo);
      session.log('Client info saved: ${clientInfo.id}');
    } 
    catch (e) {
    session.log('Failed to save client info: $e');
    throw Exception('Database error');
    }
  }

  Future<void> saveMultipleClientInfo(
    /// Función para guardar en la base de datos los datos de múltiples clientes a la vez
    Session session,
    List<ClientInfo> clientInfoList,
  )
  async{
    try{
      for (var clientInfo in clientInfoList) {
        clientInfo.createdAt = DateTime.now();
        await session.db.insertRow(clientInfo);
        session.log('Client info saved: ${clientInfo.id}');
      }
    }
    catch (e) {
      session.log('Failed to save client info: $e');
      throw Exception('Database error');
    }
  }



  Future<List<ClientInfo>> getAllClientInfo(
    /// Función para obtener la información de todos los clientes.
    Session session
  )
  async {
    try{
      return await session.db.find<ClientInfo>();
    } catch (e) {
      session.log('Failed to fetch client info: $e');
      throw Exception('Database error');
    }
  }
}