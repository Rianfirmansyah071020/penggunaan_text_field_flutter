import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  final TextEditingController myController = new TextEditingController();

  String hasil = "Hasil";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Penggunaan Text Field"),
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: myController,
                  // onChanged: (value) => print(value),
                  onSubmitted: (value) => setState(() {
                    hasil = value;
                  }),
                ),
              ),
              Text(hasil),
            ],
          ),
        ),
      ),
    );
  }
}
