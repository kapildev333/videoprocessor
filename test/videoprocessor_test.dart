import 'package:flutter_test/flutter_test.dart';
import 'package:videoprocessor/videoprocessor.dart';
import 'package:videoprocessor/videoprocessor_platform_interface.dart';
import 'package:videoprocessor/videoprocessor_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVideoprocessorPlatform
    with MockPlatformInterfaceMixin
    implements VideoprocessorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VideoprocessorPlatform initialPlatform = VideoprocessorPlatform.instance;

  test('$MethodChannelVideoprocessor is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVideoprocessor>());
  });

  test('getPlatformVersion', () async {
    Videoprocessor videoprocessorPlugin = Videoprocessor();
    MockVideoprocessorPlatform fakePlatform = MockVideoprocessorPlatform();
    VideoprocessorPlatform.instance = fakePlatform;

    expect(await videoprocessorPlugin.getPlatformVersion(), '42');
  });
}
