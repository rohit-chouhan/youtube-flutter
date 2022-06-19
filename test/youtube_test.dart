import 'package:flutter/material.dart';
import 'package:youtube/youtube.dart';
import 'package:youtube/youtube_thumbnail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Youtube Thumbnail'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Youtube().video('TicGJQqrq2M').title()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hd()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').standard()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hq()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').mq()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').small()),
          ],
        ),
      ),
    );
  }
}
