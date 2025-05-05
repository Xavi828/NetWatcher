import 'package:network_info_plus/network_info_plus.dart';

class NetworkService {
  final _networkInfo = NetworkInfo();

  Future<String> getIpAddress() async {
    try {
      print("Getting IP address");
      final ip = await _networkInfo.getWifiIP();
      return ip ?? 'Unknown IP';
      } catch (e) {
        print("Error fetching IP address: $e");
        return 'Error';
      }
  } 

  Future<String> getMacAddress() async {
    try{
      print("Getting MAC address");
      final mac = await _networkInfo.getWifiBSSID();
      return mac ?? 'Unknown MAC';
    } catch(e){
      print("Error fetching MAC address: $e");
      return 'Error';
    }
  }
}