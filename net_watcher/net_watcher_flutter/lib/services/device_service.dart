import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';
import 'dart:async';

class DeviceService {
  final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  Future<String> getHostname() async {
    try {
      return Platform.localHostname;
    } catch (e) {
      print("Error fetching local hostname: $e");
      return 'Error';
    }
  }

  Future<String> getOperatingSystem() async {
    print('Here we are');
    try {
      // Establece un timeout de 5 segundos
      return await Future.any([
        _fetchOperatingSystem(),
        Future.delayed(const Duration(seconds: 5), () {
          throw TimeoutException('Operation timed out');
        }),
      ]);
    } catch (e) {
      print("Error fetching operating system: $e");
      return 'Error';
    }
  }

  Future<String> _fetchOperatingSystem() async {
    if (Platform.isWindows) {
      try {
        final windowsInfo = await _deviceInfo.windowsInfo;
        return 'Windows ${windowsInfo.productName}';
      } catch (e) {
        print("Error fetching Windows info: $e");
        return 'Error';
      }
    } else if (Platform.isLinux) {
      try {
        final linuxInfo = await _deviceInfo.linuxInfo;
        return 'Linux ${linuxInfo.prettyName}';
      } catch (e) {
        print("Error fetching Linux info: $e");
        return 'Error';
      }
    } else if (Platform.isMacOS) {
      try {
        final macInfo = await _deviceInfo.macOsInfo;
        return 'Mac ${macInfo.hostName}';
      } catch (e) {
        print("Error fetching macOS info: $e");
        return 'Error';
      }
    } else {
      print("Error defining platform");
      return 'Unknown OS';
    }
  }
}