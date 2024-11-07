import 'package:agri_connect/presentation/cubits/auth/auth_cubit/auth_cubit.dart';
import 'package:agri_connect/presentation/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AuthCubit bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: user == null
          ? const SizedBox.shrink()
          : Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    ),
                  ),
                  const Gap(40),
                  ListTile(
                    title: const Text("Edit Profile"),
                    onTap: () {
                      context.router.push(const EditProfileRoute());
                    },
                    leading: const Icon(Icons.edit),
                  ),
                  ListTile(
                    title: const Text("Change Password"),
                    onTap: () {
                      context.router.push(const ChangePasswordRoute());
                    },
                    leading: const Icon(Icons.lock),
                  ),
                  ListTile(
                    title: const Text("Logout"),
                    onTap: () {
                      context.read<AuthCubit>().unauthenticated();
                    },
                    leading: const Icon(Icons.logout),
                  ),
                  const Spacer(),
                  Text(
                    "Agri Connect",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "Version 1.0.0",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
            ),
    );
  }
}
