import 'package:flutter/material.dart';

class practise extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Practise Game'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/videos/bg1.jpg'),
                fit: BoxFit.cover
            )
        ),/*
        child: Column(
          children: [
            //Home(),
          ]
        )*/
      )
  );
}