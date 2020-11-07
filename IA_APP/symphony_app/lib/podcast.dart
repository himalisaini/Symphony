import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'utilities.dart';


class MyPodcast extends StatefulWidget {
  @override
  _MyPodcastState createState() => _MyPodcastState();
}

class _MyPodcastState extends State<MyPodcast> {


  void pushtonavigator(String routename) {
    Navigator.of(context).pushNamed(routename);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getSearchBar('Search album, song..'),
              SizedBox(height: 30,),
              Text(
                'Podcasts',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RockWell',
                  fontSize: 45,
                  color: Colors.black,
                  letterSpacing: 3.0,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height:20,),
              getHeading('Crime'),
              Flexible(
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        getPosterWithoutText('assets/murder.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/murder.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/murder.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/murder.jpg'),
                      ]
                  )
              ),
              getHeading('Science & Technology'),
              Flexible(
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        getPosterWithoutText('assets/girl.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/girl.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/girl.jpg'),
                        SizedBox(width:20),
                        getPosterWithoutText('assets/girl.jpg'),
                      ]
                  )
              ),
            ],

          ),
        ),
      ),
    );
  }
}

