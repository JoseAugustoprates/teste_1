import 'package:app_test/pages/login_page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(AppWidget());
}
class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}