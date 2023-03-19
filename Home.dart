import 'package:demo/screens.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            ' Passing Data',
            style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          custombutton(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondstlessScreen(
                          data: 'This is my Stateless Data',
                        )));
          }, Colors.blue, 'Second stless widget'),
          custombutton(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondstfullScreen(
                          data: 'This is my Statefull Data',
                        )));
          }, Colors.red, 'Second stfull widget  '),
          custombutton(
            () {
              final data = {
                'name': 'Khoob Coding',
                'channeltype': 'Education',
                'location': 'India'
              };
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      settings: RouteSettings(arguments: data),
                      builder: (context) => const ArgumentDataPassing()));
            },
            Colors.blueGrey,
            'Argument data passing',
          ),
          custombutton(
            () {
              Navigator.pushNamed(context, '/routedatascreen',
                  arguments: 'This is my onGenerate Route Data');
            },
            Colors.indigo,
            'Routes data passing  ',
          ),
        ]),
      ),
    );
  }

  MaterialButton custombutton(onpressed, Color color, String text) {
    return MaterialButton(
      onPressed: onpressed,
      color: color,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
