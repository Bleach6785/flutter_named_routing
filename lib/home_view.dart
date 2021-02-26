import 'package:flutter/material.dart';

import 'routing_constants.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.pushNamed(
              context, LoginViewRoute,
              arguments: 'pass in Argument');

          if (navigationResult == 'fromLogin') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('From Login'),
                    ));
          }
        },
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
