import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginScreen'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'help'
        ),
      ),
    );
  }
}
