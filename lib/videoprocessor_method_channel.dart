import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'videoprocessor_platform_interface.dart';

/// An implementation of [VideoprocessorPlatform] that uses method channels.
class MethodChannelVideoprocessor extends VideoprocessorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('videoprocessor');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
