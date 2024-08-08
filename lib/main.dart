import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_johnloser_page/widgets/youtube_link.dart';
import 'package:url_launcher/url_launcher.dart';

// create a list of video ids
var videoIds = [
  [
    "00_7hoid98c",
    "Shift Trailer Sound Redesign",
    "A challenging project at Vancouver Film School completed under 72 hours with limited resources provided."
  ],
  [
    "u1BDkNsWsZs",
    "Mortal Kombat 1 Omni Man Trailer Sound Redesign",
    "A sound redesign project for the trailer of MK 1 Omni Man gameplay. Recorded and designed the punches and gore sounds from scratch."
  ],
  [
    "kodSCdG7j2U",
    "SoundMorph Competition",
    "A sound design competition hosted by SoundMorph. The goal is to create a sound design for the provided video clip with provided samples only."
  ],
  [
    "99pnF7K8QUM",
    "Wwise Dialogue Event Experiment",
    "An experimental project exploring the potentials of Wwise Dialogue Event. In this project, I'm using it to trigger footsteps and impacts base on multiple parameters."
  ]
];

void main() {
  runApp(const MyApp());
}

var image = Container(
  decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/weiqinyang.jpg'), fit: BoxFit.cover),
    border: Border.all(color: Colors.transparent),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 3,
        blurRadius: 10,
        offset: Offset(0, 3),
      ),
    ],
  ),
);

var app = ListView(
  scrollDirection: Axis.horizontal,
  shrinkWrap: true,
  children: [
    SizedBox(
      width: 1200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(140, 20, 140, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.transparent),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: image)),
                            Expanded(
                                flex: 3,
                                child: Text(
                                  "My name is Weiqin Yang, a sound designer and technical sound designer. I'm passionate about creating immersive audio experiences for games, films, and animations. Here are some of my works.",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ))
                          ]),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0))),
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemBuilder: (e, i) => YoutubeEmbed(
                      videoId: videoIds[i][0],
                      title: videoIds[i][1],
                      description: videoIds[i][2]),
                  itemCount: videoIds.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(120, 20, 120, 100),
                ),
              )
            ],
          ))
        ],
      ),
    )
  ],
);

var bottomAppBar = BottomAppBar(
  color: Colors.black,
  height: 40,
  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    Expanded(
        flex: 5,
        child: Text(
          '© 2024 Weiqin Yang. All rights reserved.',
          style: TextStyle(color: Colors.white, fontSize: 12),
        )),
    Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: InkWell(
              child: Text("GitHub",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              onTap: () =>
                  {launchUrl(Uri.parse("https://github.com/johnloser-lwi"))},
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: InkWell(
              child: Text("LinkedIn",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              onTap: () => {
                launchUrl(Uri.parse(
                    "https://www.linkedin.com/in/weiqin-yang-1a666b112/"))
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: InkWell(
              child: Text("Instagram",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              onTap: () => {
                launchUrl(Uri.parse("https://www.instagram.com/john_yang_lwi/"))
              },
            ),
          ),
        ],
      ),
    )
  ]),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WEIQIN YANG SOUND',
        theme: ThemeData(
          primaryColor: Colors.grey[800],
        ),
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: const Text(
              'WEIQIN YANG',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
            shadowColor: Colors.black.withOpacity(0.8),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: app,
            ),
          ),
          bottomNavigationBar: bottomAppBar,
        ));
  }
}
