import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Cafe Recit',
              style: TextStyle(
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(50.0)),
            SignInButton(Buttons.Google, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
