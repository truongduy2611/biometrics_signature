import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:biometrics_signature/biometrics_signature.dart';

void main() {
  const MethodChannel channel = MethodChannel('biometrics_signature');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getBiometricSignature', () async {
    expect(await BiometricsSignature.biometricsSignature, '42');
  });
}
