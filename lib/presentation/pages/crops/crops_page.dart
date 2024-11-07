import 'package:agri_connect/data/models/crop.dart';
import 'package:agri_connect/presentation/pages/crops/widgets/crop_card.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CropsPage extends StatelessWidget {
  const CropsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crops'),
      ),
      body: GridView.builder(
        itemCount: crops.length,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) => CropCard(
          crop: crops[index],
        ),
      ),
    );
  }
}
