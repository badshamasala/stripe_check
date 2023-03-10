import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stripe_check/enter_with_pin.dart';
import 'package:stripe_check/sqflite_check.dart';

class RouteServices {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/homepage':
        return CupertinoPageRoute(builder: (_) {
          return const SqFliteCheck();
        });

      case "/productpage":
        if (args is Map) {
          return CupertinoPageRoute(builder: (_) {
            return EnterWithPin();
          });
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Page Not Found"),
        ),
      );
    });
  }
}
