import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World!'),
        ),
        body: const Center(child: BiggerText(text: 'This is Heading')),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text; // state text bersifat final

  const Heading({Key? key, required this.text})
      : super(key: key); // lalu state text masuk ke constructor

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 32;
            });
          }, 
          child: const Text('Perbesar')
        )
      ],
    );
  }
}
