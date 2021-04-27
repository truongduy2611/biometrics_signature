import Flutter
import UIKit
import LocalAuthentication


public class SwiftBiometricsSignaturePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "biometrics_signature", binaryMessenger: registrar.messenger())
    let instance = SwiftBiometricsSignaturePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getBiometricsSignature"  {
        let context = LAContext()
        context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        let domainState = context.evaluatedPolicyDomainState;
        if domainState != nil {
            result(String(decoding: (domainState?.base64EncodedData())!, as: UTF8.self))
        } else {
            result(nil)
        }
        
    }
  }
}
