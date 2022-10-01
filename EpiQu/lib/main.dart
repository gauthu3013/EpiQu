import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'NavBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'EpiQu',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: AnimatedSplashScreen(
        splash: 'lib/images/splash.png',
        splashIconSize: 500,
        nextScreen: MyHomePage(),
        duration: 3000,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.black,
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('EpiQu'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/bg1.jpg'),
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
}
/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    children: [
      Center(

      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/images/E'))
        ),
      )
          button(child: Text('Disabled Button'))
      )
    ]
  );
}

class button extends StatelessWidget {
  onPressed: () {},
  textColor: Colors.white,
  padding: const EdgeInsets.all(0.0),
  child: Container(
  decoration: const BoxDecoration(
  gradient: LinearGradient(
  colors: <Color>[
  Color(0xFF0D47A1),
  Color(0xFF1976D2),
  Color(0xFF42A5F5),
  ],
  ),
  ),
  padding: const EdgeInsets.all(10.0),
  child: const Text('Gradient Color'),
  ),
}
*/