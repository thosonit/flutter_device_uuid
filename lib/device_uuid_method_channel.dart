import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_uuid_platform_interface.dart';

/// An implementation of [DeviceUuidPlatform] that uses method channels.
class MethodChannelDeviceUuid extends DeviceUuidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_uuid');

  @override
  Future<String?> getUUID() async {
    final uuid = await methodChannel.invokeMethod<String?>('getUUID');
    return uuid;
  }
}
