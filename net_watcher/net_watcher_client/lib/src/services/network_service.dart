import 'package:network_info_plus/network_info_plus.dart';

class NetworkService {
  final _networkInfo = NetworkInfo();

  Future<String> getIpAddress() async {
    return await _networkInfo.getWifiIP() ?? 'Unknown IP';
  }

  Future<String> getMacAddress() async {
    return await _networkInfo.getWifiBSSID() ?? 'Unknown MAC';
  }
}