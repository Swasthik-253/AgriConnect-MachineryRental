import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppErrorWidget extends StatelessWidget {
  final AppError error;
  final VoidCallback? onRetry;

  const AppErrorWidget({
    super.key,
    required this.error,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.svgs.error.svg(height: 200, width: 200),
        const Gap(8),
        Text(
          error.message,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (onRetry != null) ...[
          const Gap(8),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ],
    );
  }
}
