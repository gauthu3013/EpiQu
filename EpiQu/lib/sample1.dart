import 'package:flutter/material.dart';

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/bg1.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            q1(),
          ]
        )
      )
  );
}

class q1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(

    children: [
      Row(
        children: [Text('Question 1 of 5', style: TextStyle(color: Colors.white))]
      ),
      Row(
        children: [Text('Question 1 of 5', style: TextStyle(color: Colors.white))]
      )
    ],
  );
}


