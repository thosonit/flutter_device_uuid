import 'package:flutter_test/flutter_test.dart';
import 'package:device_uuid/device_uuid.dart';
import 'package:device_uuid/device_uuid_platform_interface.dart';
import 'package:device_uuid/device_uuid_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceUuidPlatform 
    with MockPlatformInterfaceMixin
    implements DeviceUuidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DeviceUuidPlatform initialPlatform = DeviceUuidPlatform.instance;

  test('$MethodChannelDeviceUuid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceUuid>());
  });

  test('getPlatformVersion', () async {
    DeviceUuid deviceUuidPlugin = DeviceUuid();
    MockDeviceUuidPlatform fakePlatform = MockDeviceUuidPlatform();
    DeviceUuidPlatform.instance = fakePlatform;
  
    expect(await deviceUuidPlugin.getPlatformVersion(), '42');
  });
}
