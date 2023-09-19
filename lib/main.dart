import 'package:flutter/material.dart';
import 'package:flutter_johnloser_page/widgets/youtube_link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'John Loser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('John Loser'),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Scrollbar(
            child: ListView.builder(
              itemBuilder: (e, i) => YoutubeEmbed(
                  videoId: "99pnF7K8QUM",
                  title: "Test Title ${i + 1}",
                  description: "Test Description ${i + 1}"),
              itemCount: 3,
              shrinkWrap: true,
            ),
          ),
        ),
      ),
    );
  }
}
