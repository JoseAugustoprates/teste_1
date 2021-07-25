import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bem-Vindo(a)',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Faça registro para continuar',
              style: TextStyle(fontSize: 18.0, color: Colors.blue),
            ),
            SizedBox(height: 20.0),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Informe seu nome',
                    ),
                    validator: (String? text) {
                      if (text!.isEmpty) {
                        return 'Informe seu nome';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Informe seu e-mail',
                    ),
                    validator: (String? text) {
                      if (text!.isEmpty) {
                        return 'Informe seu e-mail';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Informe uma senha',
                    ),
                    validator: (String? text) {
                      if (text!.isEmpty) {
                        return 'Informe uma senha';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 25.0),
                  ElevatedButton(
                    child: Text('Registrar'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final snackbar = SnackBar(
                          content: Text('Registrado com Sucesso!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      }
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Text(
              'Já tem conta?',
              style: TextStyle(fontSize: 12.0),
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(color: Colors.blue),
                  ),
                ),
                child: Text('Entrar'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
