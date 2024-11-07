import 'package:agri_connect/data/models/crop.dart';
import 'package:agri_connect/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CropCard extends StatelessWidget {
  final Crop crop;

  const CropCard({
    super.key,
    required this.crop,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(MachinesRoute(crop: crop));
        },
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(12),
            Image(
                image: AssetImage(crop.imagePath),
                fit: BoxFit.cover,
                width: 100,
                height: 100,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircularProgressIndicator();
                }),
            const Gap(4),
            Text(
              crop.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Gap(2),
            Text(crop.knName, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
