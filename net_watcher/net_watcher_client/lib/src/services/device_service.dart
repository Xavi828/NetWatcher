import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class DeviceService {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<String> getHostname() async {
    return Platform.localHostname;
  }

  Future<String> getOperatingSystem() async {
    if (Platform.isWindows){
      final windowsInfo = await _deviceInfo.windowsInfo;
      return 'Windows ${windowsInfo.productName}';
    }
    else if (Platform.isLinux){
      final linuxInfo = await _deviceInfo.linuxInfo;
      return 'Linux ${linuxInfo.prettyName}';
    }
    else if (Platform.isMacOS){
      final macInfo = await _deviceInfo.macOsInfo;
      return 'Mac ${macInfo.hostName}';
    }
    else {
      return 'Unknown OS';
    }
  }
}