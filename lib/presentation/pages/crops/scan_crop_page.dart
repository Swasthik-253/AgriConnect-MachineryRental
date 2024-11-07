import 'dart:io';

import 'package:agri_connect/presentation/routes/app_router.gr.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../../di/get_it.dart';
import '../../cubits/crop/scan_crop_cubit/scan_crop_cubit.dart';

@RoutePage()
class ScanCropPage extends StatefulWidget implements AutoRouteWrapper {
  const ScanCropPage({super.key});

  @override
  State<ScanCropPage> createState() => _ScanCropPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ScanCropCubit>(),
      child: this,
    );
  }
}

class _ScanCropPageState extends State<ScanCropPage> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan Crop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              "If you are unsure of the crop you have, you can either take a picture of the crop or upload a picture of the crop. We will then identify the crop for you and give the machine list that can be used for the crop.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Gap(20),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                    border: Border.all(color: Theme.of(context).primaryColor),
                  ),
                  child: _image == null
                      ? const Center(
                          child: Text("No Image Selected"),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(_image!.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                if (_image != null)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton.filledTonal(
                      color: Colors.white,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                          iconSize: MaterialStateProperty.all(20)),
                      onPressed: () {
                        setState(() {
                          _image = null;
                        });
                      },
                      icon: const Icon(Icons.delete_forever),
                    ),
                  ),
              ],
            ),
            const Gap(20),
            ElevatedButton.icon(
              onPressed: () => _getImage(ImageSource.camera),
              icon: const Icon(Icons.camera),
              label: const Text("Take Picture"),
            ),
            const Gap(20),
            ElevatedButton.icon(
              onPressed: () => _getImage(ImageSource.gallery),
              icon: const Icon(Icons.upload),
              label: const Text("Upload Image"),
            ),
            const Spacer(),
            if (_image != null)
              BlocConsumer<ScanCropCubit, ScanCropState>(
                listener: (context, state) {
                  if (state is ScanCropSuccess) {
                    showDialog(
                      context: context,
                      builder: (context1) => AlertDialog(
                        title: const Text("Crop Identified"),
                        content:
                            Text("The crop identified is ${state.crop.name}"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context1.popRoute();
                              context.router.root
                                  .replace(MachinesRoute(crop: state.crop));
                            },
                            child: const Text("Check Machines"),
                          ),
                        ],
                      ),
                    );
                  }
                  if (state is ScanCropFailure) {
                    showDialog(
                      context: context,
                      builder: (context1) => AlertDialog(
                        title: const Text("Crop Not Found"),
                        content: const Text("No crop could be identified."),
                        actions: [
                          TextButton(
                            onPressed: () => context1.popRoute(),
                            child: const Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return PrimaryButton(
                    isLoading: state is ScanCropLoading,
                    onPressed: () {
                      context
                          .read<ScanCropCubit>()
                          .scanCrop(File(_image!.path));
                    },
                    child: const Text("Identify Crop"),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }
}
