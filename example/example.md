Here the example of all method, enjoy coding 😃

```dart
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
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').title()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').authorName()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').authorUrl()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').type()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').height()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').width()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').version()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').providerName()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').providerUrl()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').thumbnailHeight()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').thumbnailWidth()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').thumbnail()),
            Text(Youtube(youtubeId: 'a0Da8TNMTyM').html()),
            Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').hd()),
            Image.network(
                YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').standard()),
            Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').hq()),
            Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').mq()),
            Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').small()),
          ],
        ),
      ),
    );
  }
}
```