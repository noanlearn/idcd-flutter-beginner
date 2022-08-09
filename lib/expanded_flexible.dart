import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          )
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          )
        ),
        Expanded(
          child: Container(
            color: Colors.purple,
          )
        ),
      ],
    );
  }
}

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                ExpandedWidget(),
                FlexibleWidget()
              ],
            ),
            Row(
              children: const [
                ExpandedWidget(),
                ExpandedWidget()
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                FlexibleWidget()
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                ExpandedWidget()
              ],
            )
          ],
        )
        ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white)
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Expanded', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ))),
      ));
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white)
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24
            ),),),
      ));
  }
}

