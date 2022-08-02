// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea_maker/firebase_options.dart';
import 'package:idea_maker/foundation/dart_defines.dart';

// Project imports:
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode && DartDefines.enablePreview,
        builder: (context) {
          return const MyApp();
        },
      ),
    ),
  );
}
