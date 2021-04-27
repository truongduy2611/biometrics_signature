#import "BiometricsSignaturePlugin.h"
#if __has_include(<biometrics_signature/biometrics_signature-Swift.h>)
#import <biometrics_signature/biometrics_signature-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "biometrics_signature-Swift.h"
#endif

@implementation BiometricsSignaturePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBiometricsSignaturePlugin registerWithRegistrar:registrar];
}
@end
