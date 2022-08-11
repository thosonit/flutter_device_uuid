#import "DeviceUuidPlugin.h"
#if __has_include(<device_uuid/device_uuid-Swift.h>)
#import <device_uuid/device_uuid-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "device_uuid-Swift.h"
#endif

@implementation DeviceUuidPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeviceUuidPlugin registerWithRegistrar:registrar];
}
@end
