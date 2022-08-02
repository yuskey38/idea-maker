// Flutter imports:

// Package imports:
import 'package:device_preview/device_preview.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:idea_maker/l10n/l10n.dart';
// Project imports:

import 'package:idea_maker/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Center(
        child: Text(
          'data',
          style: TextStyles.regular(fontSize: 100),
        ),
      ),
    );
  }
}
