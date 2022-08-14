import 'device_uuid_platform_interface.dart';

class DeviceUuid {
  Future<String?> getUUID() {
    return DeviceUuidPlatform.instance.getUUID();
  }
}
