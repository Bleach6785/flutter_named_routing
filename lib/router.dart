import 'package:flutter/material.dart';
import 'package:flutter_named_routing/underfined_view.dart';

import 'home_view.dart';
import 'login_view.dart';
import 'routing_constants.dart';
import 'underfined_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      var argument = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => LoginView(argument: argument));
    default:
      return MaterialPageRoute(
          builder: (context) => UnderfinedView(name: settings.name));
  }
}
