// @dart=2.15

import 'dart:ui' as ui;

import 'package:lrcokl/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
