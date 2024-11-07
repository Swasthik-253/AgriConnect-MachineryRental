import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/utils/validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

import '../../../domain/entites/params/register_params.dart';
import '../../../utils/custom_input_formatters.dart';
import '../../cubits/auth/register_cubit/register_cubit.dart';
import '../../widgets/label_with_field.dart';
import '../../widgets/primary_button.dart';

@RoutePage()
class RegisterPage extends StatefulWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegisterCubit>(),
      child: this,
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  static const String _fullName = "fullName";
  static const String _email = "email";
  static const String _phoneNumber = "phoneNumber";
  static const String _address = "address";
  static const String _password = "password";
  static const String _confirmPassword = "confirmPassword";

  FormBuilderFields get _fields => _formKey.currentState!.fields;

  String get _fullNameValue => _fields[_fullName]!.value as String;

  String get _emailValue => _fields[_email]!.value as String;

  String get _phoneNumberValue => _fields[_phoneNumber]!.value as String;

  String get _passwordValue => _fields[_password]!.value as String;

  String get _addressValue => _fields[_address]!.value as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    Text(
                      'Nice to know you!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Gap(16),
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
                    LabelWithField(
                      label: "Password",
                      child: FormBuilderTextField(
                        name: _password,
                        textInputAction: TextInputAction.next,
                        validator: Validators.passwordValidator,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    const Gap(16),
                    LabelWithField(
                      label: "Confirm Password",
                      child: FormBuilderTextField(
                        name: _confirmPassword,
                        textInputAction: TextInputAction.done,
                        validator: (value) =>
                            Validators.confirmPasswordValidator(
                                value, _passwordValue),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ),
                    const Gap(16),
                    BlocConsumer<RegisterCubit, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterFailure) {
                          context.showErrorBar(
                            content: Text(state.error.message),
                          );
                        }
                        if (state is RegisterSuccess) {
                          context.showSuccessBar(
                            content: const Text(
                                "Registered successfully! Please login to continue."),
                          );
                        }
                      },
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state is RegisterLoading,
                          onPressed: () {
                            if (!_formKey.currentState!.saveAndValidate()) {
                              return;
                            }
                            context
                                .read<RegisterCubit>()
                                .register(RegisterParams(
                                  fullName: _fullNameValue,
                                  email: _emailValue,
                                  phoneNumber: _phoneNumberValue,
                                  address: _addressValue,
                                  password: _passwordValue,
                                ));
                          },
                          child: const Text('Register'),
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
