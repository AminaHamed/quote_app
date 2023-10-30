import 'package:flutter/material.dart';
import 'package:quotes_app/core/utils/media_query_values.dart';

import '../../../../core/utils/app_colors.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Text('quote.content',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text("quote.author",
                  style: Theme.of(context).textTheme.bodyMedium))
        ],
      ),
    );
  }
}