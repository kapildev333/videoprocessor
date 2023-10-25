
import 'videoprocessor_platform_interface.dart';

class Videoprocessor {
  Future<String?> getPlatformVersion() {
    return VideoprocessorPlatform.instance.getPlatformVersion();
  }
}
