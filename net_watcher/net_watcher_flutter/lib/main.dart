import 'package:flutter/material.dart';
import 'package:net_watcher_client/net_watcher_client.dart'; // Importa el cliente generado
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:net_watcher_flutter/services/client_info_service.dart';
import 'package:net_watcher_flutter/services/device_service.dart';
import 'package:net_watcher_flutter/services/network_service.dart';

late final Client client;
void main(){
  //Inicializa el cliente de ServerPod
  const serverUrl='http://localhost:8080/';
  client= Client(serverUrl)
  ..connectivityMonitor = FlutterConnectivityMonitor();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Net Watcher Client',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const ClientInfoScreen(),
    );
  }
}

class ClientInfoScreen extends StatefulWidget {
  const ClientInfoScreen({super.key});

  @override
  State<ClientInfoScreen> createState() => _ClientInfoScreenState();
}

class _ClientInfoScreenState extends State<ClientInfoScreen> {

  String _clientInfo = 'Fetching client info...';

  @override
  void initState(){
    super.initState();
    _fetchClientInfo();
  }

  Future<void> _fetchClientInfo() async {
    print("Before clientInfoService");
    final clientInfoService = ClientInfoService(NetworkService(), DeviceService());

    print("Before clientInfoData");
    final clientInfoData = await clientInfoService.getClientInfo();

    try{
      // Crea una instancia de ClientInfo con los datos recopilados
      final clientInfo = ClientInfo(
        ipAddress: clientInfoData['ipAddress']!,
        macAddress: clientInfoData['macAddress']!,
        hostname: clientInfoData['hostname']!,
        os: clientInfoData['os']!,
        createdAt: DateTime.now(),
      );

      //final clientInfo = ClientInfo(
      //  ipAddress: "192.169.1.1",
      //  macAddress: "1234.5678.9012@",
      //  hostname: "Noah Martos",
      //  os: "Windows 10",
      //  createdAt: DateTime.now(),
      //);

      //Lama al endpoint para guardar la información en la base de datos
      await client.clientInfo.saveClientInfo(clientInfo);

      // Actualiza la UI con un mensaje de éxito
      setState(() {
        _clientInfo = 'Client info sent successfully:\n'
          'IP: ${clientInfo.ipAddress}\n'
          'MAC: ${clientInfo.macAddress}\n'
          'Hostname: ${clientInfo.hostname}\n'
          'OS: ${clientInfo.os}';
      });

    } catch(e) {
      setState(() {
        _clientInfo = 'Failed to send client info: $e';
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Client Info')),
      body: Center(child: Text(_clientInfo)),
    );
  }
}