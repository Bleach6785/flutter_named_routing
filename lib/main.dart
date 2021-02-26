import 'package:flutter/material.dart';
import 'router.dart' as router;
import 'routing_constants.dart';
import 'underfined_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Named Routing',
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
      // onUnknownRoute: (settings) => MaterialPageRoute(
      //     builder: (context) => UnderfinedView(name: settings.name)),
    );
  }
}
