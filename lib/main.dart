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

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;
  // String _name = ''; // for onChange
  // final TextEditingController _controller = TextEditingController(); //for controller
  bool lightOn = false;
  bool agree = false;

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
      // // Body for Container, Decoration, Padding-Margin Example
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

      // body: Column(
      //   children: const <Widget>[
      //     Text(
      //       'Sebuah Judul',
      //       style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      //     ),
      //     Text('Lorem ipsum dolor sit amet'),
      //   ],
      // ),

      // // Body for Button Example
      // body: Column(
      //   children: [
      //     ElevatedButton(onPressed: () {}, child: const Text('ElevatedButton')),
      //     TextButton(onPressed: () {}, child: const Text('TextButton')),
      //     OutlinedButton(onPressed: () {}, child: const Text('OutlinedButton')),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.volume_up),
      //       tooltip: 'Increase volume by 10',
      //     ),
      //     DropdownButton(
      //         items: const <DropdownMenuItem<String>>[
      //           DropdownMenuItem(value: 'Dart', child: Text('Dart')),
      //           DropdownMenuItem(value: 'Kotlin', child: Text('Kotlin')),
      //           DropdownMenuItem(value: 'Swift', child: Text('Swift')),
      //         ],
      //         value: language,
      //         hint: const Text('Select Language'),
      //         onChanged: (String? value) {
      //           setState(() {
      //             language = value;
      //           });
      //         })
      //   ],
      // ),

      // // Body for Input Widget Example onChange
      // body: Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: Column(
      //     children: [
      //       TextField(
      //         decoration: const InputDecoration(
      //           hintText: 'Write your name here',
      //           labelText: 'Your Name',
      //         ),
      //         controller: _controller,
      //         // onChanged: (String value) {  // for onChange
      //         //   setState(() {
      //         //     _name = value;
      //         //   });
      //         // },
      //       ),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //           onPressed: () {
      //             showDialog(
      //                 context: context,
      //                 builder: (context) {
      //                   // return AlertDialog(content: Text('Hello, $_name')); // for onChange
      //                   return AlertDialog(
      //                       content: Text('Hello, ${_controller.text}'));
      //                 });
      //           },
      //           child: const Text('Submit'))
      //     ],
      //   ),
      // ),

      // // Body for Switch, Radio,Checkbox Example
      // body: Column(
      //   children: [
      //     Column(
      //       children: [
      //         Switch(
      //             value: lightOn,
      //             onChanged: (bool value) {
      //               setState(() {
      //                 lightOn = value;
      //               });

      //               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //                 content: Text(lightOn ? 'Light On' : 'Light Off'),
      //                 duration: const Duration(seconds: 1),
      //               ));
      //             })
      //       ],
      //     ),
      //     Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         ListTile(
      //           leading: Radio(
      //               value: 'Dart',
      //               groupValue: language,
      //               onChanged: (String? value) {
      //                 setState(() {
      //                   language = value;
      //                   showSnackBar();
      //                 });
      //               }),
      //           title: const Text('Dart'),
      //         ),
      //         ListTile(
      //           leading: Radio(
      //               value: 'Kotlin',
      //               groupValue: language,
      //               onChanged: (String? value) {
      //                 setState(() {
      //                   language = value;
      //                   showSnackBar();
      //                 });
      //               }),
      //           title: const Text('Kotlin'),
      //         ),
      //         ListTile(
      //           leading: Radio(
      //               value: 'Swift',
      //               groupValue: language,
      //               onChanged: (String? value) {
      //                 setState(() {
      //                   language = value;
      //                   showSnackBar();
      //                 });
      //               }),
      //           title: const Text('Swift'),
      //         ),
      //         ListTile(
      //           leading: Checkbox(
      //               value: agree,
      //               onChanged: (bool? value) {
      //                 setState(() {
      //                   agree = value!;
      //                 });
      //               }),
      //           title: const Text('Agree/Disagree'),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

      // // Body for Image Example
      // body: Center(
      //   // child: Image.network(    // show image from url
      //   //   'https://picsum.photos/200/300',
      //   //   width: 200,
      //   //   height: 200,
      //   // ),
      //   child: Image.asset(
      //     'images/anya.jpg',
      //     width: 200,
      //     height: 200,
      //   ),
      // ),

      // Body for Font Example
      body: Text(
        'Font Oswald',
        style: TextStyle(fontFamily: 'Oswald', fontSize: 30),
      ),

      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.favorite), onPressed: () {}),
    );
  }

  // // methode untuk menghapus controller yg tidak terpakai untuk menghindari memory leak
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: const Duration(seconds: 1),
    ));
  }
}
