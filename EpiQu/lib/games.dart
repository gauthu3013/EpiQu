import 'package:flutter/material.dart';
import 'main.dart';
import 'sample1.dart';

class games extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
              appBar: AppBar(
                title: Text('Game Modes'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/images/bg1.jpg'),
                              fit: BoxFit.cover
                          )
                      ),

                      child: Column(
                        children: [
                          InkWell(
                            child: Container(
                              child: Card(
                                child: Image.asset('lib/images/EpiQu.png'),
                                color: Colors.transparent,
                              ),
                            ),
                            onTap: () => select(context, 0),
                          ),
                          Text('Practice', style: TextStyle(color: Colors.white, fontSize: 18),),
                          Divider(),
                          InkWell(
                            child: Container(
                              child: Card(
                                child: Image.asset('lib/images/rank.png'),
                                color: Colors.transparent,
                              ),
                            ),
                            onTap: () {},
                          ),
                          Text('Ranked', style: TextStyle(color: Colors.white, fontSize: 18),),
                          Divider(),
                          InkWell(
                            child: Container(
                              child: Card(
                                child: Image.asset('lib/images/vs.png'),
                                color: Colors.transparent,
                              ),
                            ),
                            onTap: () {},
                          ),
                          Text('Tag Team', style: TextStyle(color: Colors.white, fontSize: 18),),
                          Divider(),
                          InkWell(
                            child: Container(
                              child: Card(
                                child: Image.asset('lib/images/stand.png'),
                                color: Colors.transparent,
                              ),
                            ),
                            onTap: () {},
                          ),
                          Text('Standard', style: TextStyle(color: Colors.white, fontSize: 18),)
                        ]
                      )
                    )
                  ]
                )
              )
          )
  );
  
  void select(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => sample()
        ));
        break;
/*
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyHomePage()
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyHomePage()
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyHomePage()
        ));
        break;
 */
    }
  }
}
