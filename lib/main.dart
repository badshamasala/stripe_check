import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:stripe_check/add_home_page.dart';
import 'package:stripe_check/get_practise.dart';
import 'package:stripe_check/list.dart';
import 'package:stripe_check/route_service.dart';

import 'trainer_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51Jd74QSB67LjbAY99NfPi9FkzLhsZVEwVq60pzpha4A4WrKIqLOiA6LryjOsmlrCL0uh8bkWZ1e7joftGWtFRWaY00Aiaivm9L";
      await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
           onGenerateRoute: RouteServices.generateRoute,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home:  TrainerList(),
        ),
      );
    });
  }
}
