import 'package:demo/Home.dart';
import 'package:demo/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      // routes: {
      //   '/routedatascreen':(context)=>const RoutesDatatPassing()
      // },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/routedatascreen') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const RoutesDatatPassing());
        }
      },
    );
  }
}
