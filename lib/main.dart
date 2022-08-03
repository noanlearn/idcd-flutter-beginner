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
        home: const FirstScreen());
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
            icon: const Icon(Icons.search, color: Colors.white),
          )
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      /* body: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent,
          // shape: BoxShape.circle   // Shape
          // boxShadow: [      
          //   BoxShadow(
          //     color: Colors.black,
          //     offset: Offset(3, 6),
          //     blurRadius: 10
          //   )
          // ] // BoxShadow
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10)
        ),
        // color: Colors.blue,
        // width: 200,
        // height: 100,
        // padding: EdgeInsets.all(10),
        // margin: EdgeInsets.all(10),
        child: const Padding(
          padding: EdgeInsets.all(30),
          child: Text('Ini Padding'),
        )
        // child: const Text(
        //   'Hi',
        //   style: TextStyle(fontSize: 40),
        //   ),
      ),*/

      // // Body for Row and Column Example
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     IconButton(icon: Icon(Icons.share), onPressed: () {},),
      //     IconButton(icon: Icon(Icons.thumb_up), onPressed: () {},),
      //     IconButton(icon: Icon(Icons.thumb_down), onPressed: () {},),

      //   ],
      // ),

      body: Column(
        children: const <Widget>[
          Text(
            'Sebuah Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Lorem ipsum dolor sit amet'),
        ],
      ),

      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.favorite), onPressed: () {}),
    );
  }
}
