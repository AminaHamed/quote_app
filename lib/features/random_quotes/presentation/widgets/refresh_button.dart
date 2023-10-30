import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.primary),
      child: const Icon(
        Icons.refresh,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}
