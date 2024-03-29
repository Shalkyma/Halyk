import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/main_bloc.dart';
import 'package:frontend/services/auth_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController iinController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final AuthService authService = AuthService();
    const storage = FlutterSecureStorage();


    void login() async {
      final response = await authService.loginUser(
        iinController.text,
        passwordController.text,
      );

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        await storage.write(key: 'refreshToken', value: responseBody['refresh']);
        await storage.write(key: 'accessToken', value: responseBody['access']);

        BlocProvider.of<NavigationBloc>(context).add(NavigateToHomeEvent());
      }
    }

    return Scaffold(
      backgroundColor: const Color(0XFF2DD384),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/icons/HalykLifeIcon.svg',
                width: 100.0,
                height: 100.0,
              ),
              Text(
                "Авторизация",
                  style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: iinController,
                decoration: const InputDecoration(
                  labelText: 'ИИН',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: login,
                child: const Text('Войти'),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  text: 'Ещё нет аккаунта? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Зарегестрироваться',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          BlocProvider.of<NavigationBloc>(context).add(NavigateToRegistrationEvent());
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
