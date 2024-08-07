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
    "A sound redesign project for the trailer of Mortal Kombat 1 Omni Man gameplay. Recorded and designed the punches and gore sounds from scratch."
  ],
  [
    "99pnF7K8QUM",
    "Exploring the Potentials of Wwise Dynamic Dialogue System",
    "An experimental project exploring the potentials of Wwise Dynamic Dialogue System's special use case. In this project, I'm using it to trigger footsteps and impacts base on multiple parameters."
  ],
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weiqin Yang Sound',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weiqin Yang'),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Scrollbar(
            child: ListView.builder(
              itemBuilder: (e, i) => YoutubeEmbed(
                  videoId: videoIds[i][0],
                  title: videoIds[i][1],
                  description: videoIds[i][2]),
              itemCount: 3,
              shrinkWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
