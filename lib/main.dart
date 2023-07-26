import 'package:flutter/material.dart';
import 'package:gwala/presentation/screens/screens.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'helpers/helpers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp.router(
        routerConfig: AppRouter.router,
        title: ConstantsApp.kAppName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
      );
    });
  }
}
