import 'package:flutter/material.dart';

//!   Second Stateless Screen

class SecondstlessScreen extends StatelessWidget {
  String data;
  SecondstlessScreen({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Second Stateless Screen'),
      ),
      body: Center(
          child: Text(
        'MyData :- $data ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}

//!   Second Statefull Screen

class SecondstfullScreen extends StatefulWidget {
  String data;
  SecondstfullScreen({required this.data, super.key});

  @override
  State<SecondstfullScreen> createState() => _SecondstfullScreenState();
}

class _SecondstfullScreenState extends State<SecondstfullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Second Statefull Screen'),
      ),
      body: Center(
          child: Text(
        'MyData :-  ${widget.data}',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}

//!  Argument Data Screen
class ArgumentDataPassing extends StatefulWidget {
  const ArgumentDataPassing({super.key});

  @override
  State<ArgumentDataPassing> createState() => _ArgumentDataPassingState();
}

class _ArgumentDataPassingState extends State<ArgumentDataPassing> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Argument Data Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name :- ${data['name']}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Channel Type :- ${data['channeltype']}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Location :- ${data['location']}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      )),
    );
  }
}

//! Routes Data Screen

class RoutesDatatPassing extends StatefulWidget {
  const RoutesDatatPassing({super.key});

  @override
  State<RoutesDatatPassing> createState() => _RoutesDatatPassingState();
}

class _RoutesDatatPassingState extends State<RoutesDatatPassing> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Routes Data Screen'),
      ),
      body:  Center(
          child: Text(
        'MyData :-  $data',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
