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
    print("Get IP address");
    final ipAddress = await _networkService.getIpAddress();

    print("Get MAC address");
    final macAddress = await _networkService.getMacAddress();

    print("Get hostname");
    final hostname = await _deviceService.getHostname();

    print("Get os");
    final os = await _deviceService.getOperatingSystem();
  
  return {
    'ipAddress': ipAddress,
    'macAddress': macAddress,
    'hostname': hostname,
    'os': os
  };
  }

}