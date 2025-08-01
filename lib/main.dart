import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:test_dating_site/core/providers/navigator_provider.dart';

void main() => runApp(

  ProviderScope(
    child: Consumer(
      builder: (context, ref, _) {
        final router = ref.watch(routerProvider);
        return MaterialApp.router(
          routerConfig: router,
          theme: ThemeData(canvasColor: Colors.black, useMaterial3: true),
        );
      },
    ),
  ),
);
