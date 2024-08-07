import 'package:flutter/material.dart';
import 'package:flutter_johnloser_page/widgets/youtube_link.dart';

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
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(140, 20, 140, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        "About",
                        style: TextStyle(fontSize: 28),
                      )),
                      Expanded(
                          child: Text(
                        "My name is Weiqin Yang, a sound designer and technical sound designer. I'm passionate about creating immersive audio experiences for games, films, and animations. Here are some of my works.",
                        style: TextStyle(fontSize: 14),
                      )),
                    ],
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Weiqin Yang Sound',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Weiqin Yang'),
              backgroundColor: Colors.grey,
            ),
            body: Center(
              child: app,
            )));
  }
}
