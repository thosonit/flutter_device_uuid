import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_uuid_method_channel.dart';

abstract class DeviceUuidPlatform extends PlatformInterface {
  /// Constructs a DeviceUuidPlatform.
  DeviceUuidPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceUuidPlatform _instance = MethodChannelDeviceUuid();

  /// The default instance of [DeviceUuidPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceUuid].
  static DeviceUuidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceUuidPlatform] when
  /// they register themselves.
  static set instance(DeviceUuidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getUUID() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
