import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeEmbed extends StatefulWidget {
  //const YoutubeEmbed({super.key});

  String videoId;
  String title;
  String description;
  YoutubeEmbed(
      {super.key, this.videoId = "", this.title = "", this.description = ""});

  @override
  State<YoutubeEmbed> createState() => _YoutubeEmbedState(
      videoId: videoId, title: title, description: description);
}

class _YoutubeEmbedState extends State<YoutubeEmbed> {
  String videoId;
  String title;
  String description;

  _YoutubeEmbedState(
      {this.videoId = "", this.title = "", this.description = ""}) {}

  @override
  Widget build(BuildContext context) {
    final controller = YoutubePlayerController(
        params: YoutubePlayerParams(
            mute: false, showControls: true, showFullscreenButton: true));

    controller.cueVideoById(videoId: this.videoId);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: YoutubePlayer(
              controller: controller,
              aspectRatio: 16 / 9,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
