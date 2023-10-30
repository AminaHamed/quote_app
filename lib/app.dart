import 'package:flutter/material.dart';
import 'package:quotes_app/config/routes/app_routes.dart';

import 'config/themes/app_theme.dart';
import 'core/utils/app_strings.dart';
import 'features/random_quotes/presentation/screens/quote_screen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: QuoteScreen(),
    );
  }
}
