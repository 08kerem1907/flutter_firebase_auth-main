import 'package:flutter/material.dart';
import 'components/login_content.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,

        body: Stack(
          children: [
            LoginContent(),
            Positioned(
              top: 50,
              right: 128,
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo/logo.jpg',
                  width: 142,
                  height: 142,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
