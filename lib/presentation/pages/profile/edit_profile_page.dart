import 'package:agri_connect/domain/entites/params/edit_profile_params.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/cubits/auth/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:agri_connect/utils/custom_input_formatters.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

import '../../../di/get_it.dart';
import '../../../utils/validators.dart';
import '../../widgets/label_with_field.dart';
import '../../widgets/primary_button.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget implements AutoRouteWrapper {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EditProfileCubit>(),
      child: this,
    );
  }
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  static const String _fullName = "fullName";
  static const String _email = "email";
  static const String _phoneNumber = "phoneNumber";
  static const String _address = "address";

  FormBuilderFields get _fields => _formKey.currentState!.fields;

  String get _fullNameValue => _fields[_fullName]!.value as String;

  String get _emailValue => _fields[_email]!.value as String;

  String get _phoneNumberValue => _fields[_phoneNumber]!.value as String;

  String get _addressValue => _fields[_address]!.value as String;

  @override
  void initState() {
    super.initState();
    _setInitialValues();
  }

  void _setInitialValues() {
    final user = context.read<AuthCubit>().state.user!;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _formKey.currentState!.patchValue({
        _fullName: user.name,
        _email: user.email,
        _phoneNumber: user.phoneNumber,
        _address: user.address,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    String user = context.read<AuthCubit>().state.user!.email;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    LabelWithField(
                      label: "Full Name",
                      child: FormBuilderTextField(
                        name: _fullName,
                        textInputAction: TextInputAction.next,
                        inputFormatters: CustomInputFormatters.nameFormatter,
                        validator: (value) => Validators.emptyFieldValidator(
                            value,
                            message: 'Please enter your full name'),
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                      ),
                    ),
                    const Gap(16),
                    LabelWithField(
                      label: "Email Address",
                      child: FormBuilderTextField(
                        name: _email,
                        textInputAction: TextInputAction.next,
                        validator: Validators.emailValidator,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const Gap(16),
                    LabelWithField(
                      label: "Phone Number",
                      child: FormBuilderTextField(
                        name: _phoneNumber,
                        textInputAction: TextInputAction.next,
                        inputFormatters:
                            CustomInputFormatters.phoneNumberFormatter,
                        keyboardType: TextInputType.phone,
                        validator: Validators.phoneNumberValidator,
                      ),
                    ),
                    const Gap(16),
                    LabelWithField(
                        label: "Address",
                        child: FormBuilderTextField(
                          name: _address,
                          textInputAction: TextInputAction.next,
                          validator: (value) => Validators.emptyFieldValidator(
                              value,
                              message: 'Please enter your address'),
                          maxLines: 4,
                          keyboardType: TextInputType.streetAddress,
                          textCapitalization: TextCapitalization.words,
                        )),
                    const Gap(16),
                    const Spacer(),
                    BlocConsumer<EditProfileCubit, EditProfileState>(
                      listener: (context, state) {
                        if (state is EditProfileFailure) {
                          context.showErrorBar(
                            content: Text(state.error.message),
                          );
                        }
                        if (state is EditProfileSuccess) {
                          final user = context.read<AuthCubit>().state.user!;
                          final newUser = user.copyWith(
                            name: _fullNameValue,
                            email: _emailValue,
                            phoneNumber: _phoneNumberValue,
                            address: _addressValue,
                          );
                          if (newUser == user) {
                            context.showInfoBar(
                              content: const Text("No changes made!"),
                            );
                            return;
                          }
                          context.read<AuthCubit>().authenticated(newUser);
                          context.showSuccessBar(
                            content:
                                const Text("Profile updated successfully!"),
                          );
                          context.router.pop();
                        }
                      },
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state is EditProfileLoading,
                          onPressed: () {
                            if (!_formKey.currentState!.saveAndValidate()) {
                              return;
                            }
                            context
                                .read<EditProfileCubit>()
                                .editProfile(EditProfileParams(
                                  fullName: _fullNameValue,
                                  email: _emailValue,
                                  phoneNumber: _phoneNumberValue,
                                  address: _addressValue,
                                  oemail: user,
                                ));
                          },
                          child: const Text('Update'),
                        );
                      },
                    ),
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
