
import 'device_uuid_platform_interface.dart';

class DeviceUuid {
  Future<String?> getPlatformVersion() {
    return DeviceUuidPlatform.instance.getPlatformVersion();
  }
}
