import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class BiometricsSignature {
  static const MethodChannel _channel =
      const MethodChannel('biometrics_signature');

  static Future<String> get biometricsSignature async {
    if (Platform.isIOS) {
      return await _channel.invokeMethod('getBiometricsSignature');
    }
    return '';
  }
}
