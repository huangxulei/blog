import 'dart:io';
import 'dart:ui';

import 'package:window_manager/window_manager.dart';

class Config {
  static Future<void> init() async {
    if (Platform.isWindows) {
      await windowManager.ensureInitialized();
      WindowOptions windowOptions = const WindowOptions(
        size: Size(500, 750),
        center: true,
        // backgroundColor: Colors.white,
        skipTaskbar: false,
        // titleBarStyle: TitleBarStyle.hidden,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
      windowManager.setMaximizable(false);
      windowManager.setResizable(false);
    }
  }
}
