import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../shared/shared.dart';

import '../controllers/auth_controller.dart';
import '../widgets/widgets.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final controller = Get.arguments as AuthController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          LoginBackground(
            child: _buildForms(context),
          ),
          Positioned.fill(
            bottom: MediaQuery.of(context).padding.bottom,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForms(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputField(
                controller: controller.loginEmailController,
                keyboardType: TextInputType.emailAddress,
                labelText: 'Phone Number',
                placeholder: '8858****',
                validator: (value) {
                  if (!Regex.isPhone(value!)) {
                    return 'Invalid phone number';
                  }
                  if (value.isEmpty) {
                    return 'Phone number is required';
                  }
                  return null;
                },
              ),
              CommonWidget.rowHeight(),
              InputField(
                controller: controller.loginPasswordController,
                keyboardType: TextInputType.emailAddress,
                labelText: 'Password',
                placeholder: '********',
                password: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required.';
                  }
                  if (value.length < 6 || value.length > 15) {
                    return 'Password should be 6~15 characters';
                  }
                  return null;
                },
              ),
              CommonWidget.rowHeight(height: 64),
              ElevatedButton(
                onPressed: () {
                  controller.login(context);
                },
                child: const SizedBox(),
              ),
              CommonWidget.rowHeight(height: kDefaultMargin),
              const Text('Forgot Password?', textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
