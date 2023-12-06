import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/app_controller.dart';
import '../../../data/models/admin_auth_token_request_model.dart';
import '../../../widgets/views/action_button_view.dart';

class SigninView extends GetView<AppController> {
  SigninView({Key? key}) : super(key: key);

  final formSate = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    usernameController.text = 'admin@example.com';
    passwordController.text = 'Hello123';
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 320.0,
            child: Form(
              key: formSate,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                    ),
                    validator: (value) {
                      if (EmailValidator.validate(value!)) {
                        return 'Enter email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter email';
                      }
                      return null;
                    },
                  ),
                  ActionButtonView(
                    icon: Icons.lock_open_outlined,
                    onTap: () => controller.signIn(
                      adminAuthTokenRequest: AdminAuthTokenRequest(
                        email: usernameController.text.trim(),
                        password: passwordController.text.trim(),
                      ),
                    ),
                    title: 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
