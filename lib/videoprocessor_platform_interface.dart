import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'videoprocessor_method_channel.dart';

abstract class VideoprocessorPlatform extends PlatformInterface {
  /// Constructs a VideoprocessorPlatform.
  VideoprocessorPlatform() : super(token: _token);

  static final Object _token = Object();

  static VideoprocessorPlatform _instance = MethodChannelVideoprocessor();

  /// The default instance of [VideoprocessorPlatform] to use.
  ///
  /// Defaults to [MethodChannelVideoprocessor].
  static VideoprocessorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VideoprocessorPlatform] when
  /// they register themselves.
  static set instance(VideoprocessorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
