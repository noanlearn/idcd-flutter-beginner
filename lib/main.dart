import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.search,
              color: Colors.white
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {}, 
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          )
        ),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: () {}
        ),
    );
  }
}