import 'package:agri_connect/domain/entites/params/change_password_params.dart';
import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/widgets/label_with_field.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:agri_connect/utils/validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';

import '../../../di/get_it.dart';
import '../../cubits/auth/change_password_cubit/change_password_cubit.dart';

@RoutePage()
class ChangePasswordPage extends StatefulWidget implements AutoRouteWrapper {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChangePasswordCubit>(),
      child: this,
    );
  }
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  static const String _oldPassword = "oldPassword";
  static const String _newPassword = "newPassword";
  static const String _confirmPassword = "confirmPassword";

  FormBuilderFields get _fields => _formKey.currentState!.fields;

  String get _oldPasswordValue => _fields[_oldPassword]!.value as String;

  String get _newPasswordValue => _fields[_newPassword]!.value as String;

  bool _oldPasswordVisible = false;
  TextEditingController _oldPass = TextEditingController();
  TextEditingController _newPass = TextEditingController();
  TextEditingController _conPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String user = context.read<AuthCubit>().state.user!.email;
    print("user");
    print(user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  LabelWithField(
                    label: 'Old Password',
                    child: FormBuilderTextField(
                      name: _oldPassword,
                      controller: _oldPass,
                      //obscureText: !_oldPasswordVisible,
                      // validator: Validators.passwordValidator,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _oldPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _oldPass = _oldPass;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const Gap(20),
                  LabelWithField(
                    label: 'New Password',
                    child: FormBuilderTextField(
                      name: _newPassword,
                      controller: _newPass,
                      obscureText: true,
                      // validator: Validators.passwordValidator,
                    ),
                  ),
                  const Gap(20),
                  LabelWithField(
                    label: 'Confirm Password',
                    child: FormBuilderTextField(
                      controller: _conPass,
                      name: _confirmPassword,
                      obscureText: true,
                      // validator: (value) => Validators.confirmPasswordValidator(
                      //     value, _newPasswordValue),
                    ),
                  ),
                  const Gap(20),
                  const Spacer(),
                  BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
                    listener: (context, state) {
                      if (state is ChangePasswordSuccess) {
                        context.showSuccessBar(
                            content:
                                const Text("Password updated successfully"));
                      }
                      if (state is ChangePasswordFailure) {
                        context.showErrorBar(
                            content: Text(state.error.message));
                      }
                    },
                    builder: (context, state) {
                      return PrimaryButton(
                        isLoading: state is ChangePasswordLoading,
                        child: const Text("Update Password"),
                        onPressed: () {
                          print(_newPassword);
                          print(_oldPassword);
                          // if (_formKey.currentState!.saveAndValidate()) return;
                          // final newPasswordValue = _newPasswordValue;
                          context
                              .read<ChangePasswordCubit>()
                              .changePassword(ChangePasswordParams(
                                oldPassword: _oldPass.text,
                                newPassword: _newPass.text,
                                email: user,
                              ));
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
    );
  }
}
