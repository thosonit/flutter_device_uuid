import Flutter
import UIKit
import XYUUID

public class SwiftDeviceUuidPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "device_uuid", binaryMessenger: registrar.messenger())
        let instance = SwiftDeviceUuidPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getUUID":
            result(XYUUID.uuidForDevice())
        default:
            result("")
        }
    }
}
