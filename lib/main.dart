import 'package:flutter/material.dart';

import 'EditingScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {

       '/':(context) => Home(),
       'edit':(context) => Edit(),
       '/Edinting':(context) => Editing(),
     },
    );
  }
}
class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Table(
            children: [
              TableRow(
                children: [
                  Text('price= ${price}'),
                  Text(contit.toString()),
                  Text(GST.toString()),
                  Text(totel.toString()),

                ]
              )
            ],
          )
        ],
      ),
    );
  }
}
