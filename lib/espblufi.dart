import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'espblufi_platform_interface.dart';

class Espblufi {
  Espblufi() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      // Add code to relay back information to crash log provider service
      debugPrint(
          '${record.loggerName} :${record.level.name}: ${record.time}: ${record.message}');
    });
  }
  Future<String?> getPlatformVersion() {
    return EspblufiPlatform.instance.getPlatformVersion();
  }

  Future<void> requestConnection(String deviceID) {
    return EspblufiPlatform.instance.requestConnection(deviceID);
  }

  Future<void> sendCustomData(Uint8List data) {
    return EspblufiPlatform.instance.sendCustomData(data);
  }
}
