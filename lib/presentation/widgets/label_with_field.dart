import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LabelWithField extends StatelessWidget {
  final String label;
  final Widget child;

  const LabelWithField({
    super.key,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const Gap(4),
        child,
      ],
    );
  }
}
