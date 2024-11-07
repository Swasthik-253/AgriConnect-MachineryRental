import 'package:agri_connect/di/get_it.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/cubits/auth/login_cubit/login_cubit.dart';
import 'package:agri_connect/presentation/widgets/label_with_field.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:agri_connect/utils/validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

import '../../../domain/entites/params/login_params.dart';

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: this,
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  static const String _email = "email";
  static const String _password = "password";

  FormBuilderFields get _fields => _formKey.currentState!.fields;

  String get _emailValue => _fields[_email]!.value as String;

  String get _passwordValue => _fields[_password]!.value as String;

  bool _isObscure = true;

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
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome to, Agriconnect',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Gap(16),
                    LabelWithField(
                      label: "Email Address",
                      child: FormBuilderTextField(
                        name: _email,
                        validator: Validators.emailValidator,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const Gap(16),
                    LabelWithField(
                      label: "Password",
                      child: FormBuilderTextField(
                        name: _password,
                        validator: Validators.passwordValidator,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const Gap(16),
                    const Spacer(),
                    BlocConsumer<LoginCubit, LoginState>(
                      listener: (context, state) {
                        if (state is LoginFailure) {
                          context.showErrorBar(
                            content: Text(state.error.message),
                          );
                        }
                        if (state is LoginSuccess) {
                          context.showSuccessBar(
                              content: const Text('Logged in successfully!'));
                          context.read<AuthCubit>().authenticated(state.user);
                        }
                      },
                      builder: (context, state) {
                        return PrimaryButton(
                          isLoading: state is LoginLoading,
                          onPressed: () {
                            if (!_formKey.currentState!.saveAndValidate()) {
                              return;
                            }
                            FocusScope.of(context).unfocus();
                            context.read<LoginCubit>().login(LoginParams(
                                  email: _emailValue,
                                  password: _passwordValue,
                                ));
                          },
                          child: const Text('Login'),
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
