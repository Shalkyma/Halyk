import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/main_bloc.dart';
import 'package:frontend/services/auth_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController iinController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final AuthService authService = AuthService();
    const storage = FlutterSecureStorage();

    void register() async {
      final response = await authService.registerUser(
        iinController.text,
        passwordController.text,
      );

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        await storage.write(key: 'refreshToken', value: responseBody['token']['refresh']);
        await storage.write(key: 'accessToken', value: responseBody['token']['access']);

        return BlocProvider.of<NavigationBloc>(context).add(NavigateToLoginEvent());
      }
    }

    return Scaffold(
      backgroundColor: const Color(0XFF2DD384),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Регистрация',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: iinController,
                decoration: const InputDecoration(
                  labelText: 'ИИН',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Пароль',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: register,
                child: Text(
                  'Зарегистрироваться',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  text: 'Уже есть аккаунт? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Войти',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          BlocProvider.of<NavigationBloc>(context).add(NavigateToLoginEvent());
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