import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget {

  final List<int> numberList = [1,2,3,4,5,6,7,8,9,10];

  ScrollingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // ListView Default/Manual
      // body: ListView(
      //   children: numberList.map((number) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black)
      //       ),
      //       child: Center(
      //         child: Text('$number', style: const TextStyle(fontSize: 50),),
      //       ),
      //     );
      //   }).toList(),
      //  ),
      
      // // ListView.builder
      // body: ListView.builder(
      //   itemCount: numberList.length, 
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black)
      //       ),
      //       child: Center(
      //         child: Text('${numberList[index]}', style: const TextStyle(fontSize: 50),),
      //       ),
      //     );
      //   }),

      // ListView.separated
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black)
            ),
            child: Center(
              child: Text('${numberList[index]}', style: const TextStyle(fontSize: 50),),
            ),
          );
        }, 
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        }, 
        itemCount: numberList.length),

    );
  }
}