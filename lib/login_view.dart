import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key, this.argument}) : super(key: key);

  final String argument;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // onWillPop: () => Future.value(false),
      onWillPop: () async {
        Navigator.pop(context, 'fromLogin');
        return false;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, 'fromLogin');
          },
        ),
        body: Center(
          // child: Text('Login $argument'),
          child: Text('Login'),
        ),
      ),
    );
  }
}
