import 'network_service.dart';
import 'device_service.dart';

class ClientInfoService {
  final NetworkService _networkService;
  final DeviceService _deviceService;

  // Declaration
  ClientInfoService(
    this._networkService,
    this._deviceService);

  //Building class
  Future<Map<String, dynamic>> getClientInfo() async {
    final ipAddress = await _networkService.getIpAddress();
    final macAddress = await _networkService.getMacAddress();
    final hostname = await _deviceService.getHostname();
    final os = await _deviceService.getOperatingSystem();
  
  return {
    'ipAddress': ipAddress,
    'macAddress': macAddress,
    'hostname': hostname,
    'os': os
  };
  }

}