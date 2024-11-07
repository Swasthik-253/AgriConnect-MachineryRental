import 'package:agri_connect/gen/assets.gen.dart';
import 'package:agri_connect/presentation/widgets/primary_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class RentMachinePage extends StatelessWidget {
  const RentMachinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rent Machines"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Assets.svgs.plants.svg(height: 100),
            const Gap(20),
            const Text(
                "To provide your machines for rent, please send the following details to us to our email address:"),
            const Gap(2),
            GestureDetector(
              onTap: _email,
              child: Text(
                "pradhantrilochan901@gmail.com",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Gap(20),
            const Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Gap(20),
                    Text("1. Machine Name"),
                    Gap(4),
                    Text("2 .Machine Image"),
                    Gap(4),
                    Text("3. Crop Name"),
                    Gap(4),
                    Text("4. Rent per day"),
                    Gap(4),
                    Text("5. Contact Number"),
                    Gap(20),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text(
              "We will get back to you as soon as possible",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Gap(4),
            PrimaryButton(
              onPressed: _email,
              child: const Text("Email Now"),
            )
          ],
        ),
      ),
    );
  }

  void _email() async {
    String email = Uri.encodeComponent("pradhantrilochan901@gmail.com");
    String subject = Uri.encodeComponent("Rent Machine Details");
    String body = Uri.encodeComponent(
        """Hi, I want to provide my machine for rent.\nHere are the details: \nMachine Name: \nMachine Image: \nCrop Name: \nRent per day:\n Contact Number:\n""");
    Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
    try {
      await launchUrl(Uri(
        scheme: mail.scheme,
        path: mail.path,
        query: mail.query,
      ));
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }
}
