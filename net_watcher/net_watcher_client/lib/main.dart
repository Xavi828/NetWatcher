import 'package:flutter/material.dart';
import 'src/services/client_info_service.dart';
import 'src/services/network_service.dart';
import 'src/services/device_service.dart';

void main(){
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
    final clientInfoService = ClientInfoService(NetworkService(), DeviceService());
    final clientInfo = await clientInfoService.getClientInfo();

    setState((){
      _clientInfo = clientInfo.entries.map((e)=> '${e.key}: ${e.value}').join('\n');
    });

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Client Info')),
      body: Center(child: Text(_clientInfo)),
    );
  }
}