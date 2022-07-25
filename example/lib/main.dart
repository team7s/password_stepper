import 'package:flutter/material.dart';
import 'package:password_stepper/view_password_stepper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 50);
    return Scaffold(
      appBar: AppBar(title: const Text('View Password Stepper')),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              space,
              TextField(
                controller: myController,
                onChanged: (val) {
                  setState(() {});
                },
              ),
              Visibility(
                visible: myController.text.isNotEmpty,
                child: ViewPasswordStepper(
                  passwordText: myController.text,
                ),
              ),
              space,
            ],
          ),
        ),
      ),
    );
  }
}
