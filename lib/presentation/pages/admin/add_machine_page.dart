import 'dart:io';

import 'package:agri_connect/data/models/crop.dart';
import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/domain/entites/params/add_machine_params.dart';
import 'package:agri_connect/presentation/widgets/label_with_field.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:agri_connect/utils/custom_input_formatters.dart';
import 'package:agri_connect/utils/validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../cubits/machines/add_machine_cubit/add_machine_cubit.dart';

@RoutePage()
class AddMachinePage extends StatefulWidget implements AutoRouteWrapper {
  const AddMachinePage({super.key});

  @override
  State<AddMachinePage> createState() => _AddMachinePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddMachineCubit>(),
      child: this,
    );
  }
}

class _AddMachinePageState extends State<AddMachinePage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  static const String _machineName = 'machineName';
  static const String _cropName = 'cropName';
  static const String _userEmail = 'userEmail';
  static const String _userPhone = 'userPhone';
  static const String _pricePerHour = 'pricePerHour';

  XFile? _image;

  final ImagePicker _picker = ImagePicker();

  String get _machineNameValue =>
      _formKey.currentState!.fields[_machineName]!.value as String;

  Crop get _cropValue =>
      _formKey.currentState!.fields[_cropName]!.value as Crop;

  String get _userEmailValue =>
      _formKey.currentState!.fields[_userEmail]!.value as String;

  String get _userPhoneValue =>
      _formKey.currentState!.fields[_userPhone]!.value as String;

  double get _pricePerHourValue =>
      _formKey.currentState!.fields[_pricePerHour]!.transformedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Machine'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final XFile? image = await _picker.pickImage(
                          source: ImageSource.gallery,
                        );
                        setState(() {
                          _image = image;
                        });
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: _image != null
                            ? Image.file(
                                File(_image!.path),
                                fit: BoxFit.cover,
                              )
                            : const Icon(
                                Icons.add_a_photo,
                                size: 48,
                              ),
                      ),
                    ),
                    const Gap(20),
                    LabelWithField(
                      label: "Machine Name",
                      child: FormBuilderTextField(
                        name: _machineName,
                        validator: (value) => Validators.emptyFieldValidator(
                          value,
                          message: "Please enter a machine name",
                        ),
                        inputFormatters: CustomInputFormatters.nameFormatter,
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    const Gap(20),
                    LabelWithField(
                      label: "Crop Name",
                      child: FormBuilderDropdown(
                        name: _cropName,
                        items: crops
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.name),
                                ))
                            .toList(),
                        validator: (value) => Validators.emptyFieldValidator(
                            value,
                            message: "Please select a crop"),
                      ),
                    ),
                    const Gap(20),
                    LabelWithField(
                      label: "User Email",
                      child: FormBuilderTextField(
                        name: _userEmail,
                        validator: Validators.emailValidator,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const Gap(20),
                    LabelWithField(
                      label: "userPhone",
                      child: FormBuilderTextField(
                        name: _userPhone,
                        validator: (value) => Validators.emptyFieldValidator(
                          value,
                          message: "Please enter a phone number name",
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    const Gap(20),
                    LabelWithField(
                      label: "Price Per Hour",
                      child: FormBuilderTextField(
                        name: _pricePerHour,
                        validator: Validators.amountValidator,
                        inputFormatters: CustomInputFormatters.amountFormatter,
                        valueTransformer: (value) =>
                            double.tryParse(value ?? ''),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                      ),
                    ),
                    const Gap(20),
                    const Spacer(),
                    BlocConsumer<AddMachineCubit, AddMachineState>(
                      listener: (context, state) {
                        if (state is AddMachineSuccess) {
                          context.showSuccessBar(
                              content:
                                  const Text('Machine added successfully'));
                          _formKey.currentState!.reset();
                        }
                        if (state is AddMachineFailure) {
                          context.showErrorBar(
                              content: Text(state.error.message));
                        }
                      },
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state is AddMachineLoading,
                          child: const Text('Add Machine'),
                          onPressed: () {
                            if (!_formKey.currentState!.saveAndValidate()) {
                              return;
                            }

                            context.read<AddMachineCubit>().addMachine(
                                  AddMachineParams(
                                    machineName: _machineNameValue,
                                    crop: _cropValue.name,
                                    userEmail: _userEmailValue,
                                    userPhone: _userPhoneValue,
                                    price: _pricePerHourValue,
                                    imageInBase64: '',
                                  ),
                                  image: File(_image!.path),
                                );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
