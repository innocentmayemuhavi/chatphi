import 'package:chatphi/pages/forgot_password/forgot_password.dart';
import 'package:chatphi/pages/forgot_password/verification_link.dart';
import 'package:chatphi/pages/signin/signin.dart';
import 'package:flutter/material.dart';

class AppRoutes extends StatefulWidget {
  const AppRoutes({super.key});

  @override
  State<AppRoutes> createState() => _AppRoutesState();
}

class _AppRoutesState extends State<AppRoutes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Signin(),
        "/forgot_password": (context) => const ForgotPassWord(),
        "/verification_link": (context) => const VerificationLink(),
      },
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
