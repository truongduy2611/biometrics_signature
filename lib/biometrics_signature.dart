import 'dart:async';

import 'package:flutter/services.dart';

class BiometricsSignature {
  static const MethodChannel _channel =
      const MethodChannel('biometrics_signature');

  static Future<String> get biometricsSignature async {
    return await _channel.invokeMethod('getBiometricsSignature');
  }
}
