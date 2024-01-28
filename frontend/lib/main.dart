import 'package:flutter/material.dart';
import 'package:frontend/theme/app_theme.dart';
import 'package:frontend/views/homepage.dart';
import 'package:frontend/views/registration_screen.dart';
import 'package:frontend/views/login_screen.dart';
import 'package:frontend/bloc/main_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: MaterialApp(
        theme: appTheme(),
        home: BlocListener<NavigationBloc, NavigationState>(
          listener: (context, state) {
            if (state is NavigatedToRegistrationState) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()));
            } else if (state is NavigatedToLoginState) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            } else if (state is NavigatedToHomeState) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            }
          },
          child: const RegistrationPage(),
        ),
      ),
    );
  }
}
