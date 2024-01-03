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
      title: 'Youtube Package Demo',
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
            Text(Youtube(youtubeId: 'TicGJQqrq2M').title()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').authorName()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').authorUrl()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').type()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').height()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').width()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').version()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').providerName()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').providerUrl()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').thumbnailHeight()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').thumbnailWidth()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').thumbnail()),
            Text(Youtube(youtubeId: 'TicGJQqrq2M').html()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hd()),
            Image.network(
                YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').standard()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hq()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').mq()),
            Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').small()),
          ],
        ),
      ),
    );
  }
}
