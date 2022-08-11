import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:device_uuid/device_uuid_method_channel.dart';

void main() {
  MethodChannelDeviceUuid platform = MethodChannelDeviceUuid();
  const MethodChannel channel = MethodChannel('device_uuid');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getUUID', () async {
    expect(await platform.getUUID(), '42');
  });
}
