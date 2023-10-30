import 'package:flutter/material.dart';
import 'package:quotes_app/core/utils/app_strings.dart';

import '../widgets/quote_content.dart';
import '../widgets/refresh_button.dart';

class QuoteScreen extends StatelessWidget {
  QuoteScreen({Key? key}) : super(key: key);

  Widget _buildBodyContent() {
    return Column(
      children: [QuoteContent(), RefreshButton()],
    );
  }

  final appBar = AppBar(
    title: const Text(AppStrings.appName),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: _buildBodyContent(),
    );
  }
}
