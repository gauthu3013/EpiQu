import 'package:flutter/material.dart';

class shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                title: Text('Shop'),
                centerTitle: true,
                bottom: TabBar(
                    tabs: [
                      Tab(text: 'Power-Ups'),
                      Tab(text: 'Characters'),
                      Tab(text: 'Themes')
                    ]
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/bg1.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                child: TabBarView(
                  children: [
                    power(),
                    //characters(),
                    //themes()
                  ]
                )
              )
          )
      );
}

class power extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
    children: [
      Row (
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child :CircleAvatar(
                  backgroundImage: AssetImage('lib/images/Time Blizzard.png'),
                  radius:35,
                )
            ),
            Text('Time Blizzard', style: TextStyle(color: Colors.white, fontSize: 20))
          ]
      ),
      Row (
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child :CircleAvatar(
                  backgroundImage: AssetImage('lib/images/Surge.png'),
                  radius:35,
                )
            ),
            Text('Surge', style: TextStyle(color: Colors.white, fontSize: 20))
          ]
      ),
      Row (
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child :CircleAvatar(
                  backgroundImage: AssetImage('lib/images/Keen Eye.png'),
                  radius:35,
                )
            ),
            Text('Keen Eye', style: TextStyle(color: Colors.white, fontSize: 20))
          ]
      ),
      Row (
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child :CircleAvatar(
                  backgroundImage: AssetImage('lib/images/Iron Body.png'),
                  radius:35,
                )
            ),
            Text('Iron Body', style: TextStyle(color: Colors.white, fontSize: 20))
          ]
      ),
      Row (
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child :CircleAvatar(
                  backgroundImage: AssetImage('lib/images/Curse.png'),
                  radius:35,
                )
            ),
            Text('Curse', style: TextStyle(color: Colors.white, fontSize: 20))
          ],
      )
    ],
  );
}
/*
class characters extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
    children: [
      Row(

      );
    ],
  );
}
*/



