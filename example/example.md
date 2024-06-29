Here the example of all method, enjoy coding 😃
`carousel_slider` - is used in this example, please and refer to the [carousel_slider documentation](https://pub.dev/packages/carousel_slider).

```dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/youtube.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Youtube.config(videoId: 'lpnKWK-KEYs');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Flutter Package',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const MyHomePage(title: 'YouTube Video Info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ChannelDetails? _channelDetails;
  VideoDetails? _videoDetails;
  Thumbnails? _thumbnails;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchYoutubeData();
  }

  Future<void> _fetchYoutubeData() async {
    //await Youtube.config(videoId: 'D3GKd_MJiCQ');
    setState(() {
      _channelDetails = Youtube.channelDetails;
      _videoDetails = Youtube.videoDetails;
      _thumbnails = Youtube.thumbnails;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var thumbnailsList = [
      _thumbnails?.fullhd,
      _thumbnails?.hd,
      _thumbnails?.hq,
      _thumbnails?.sd,
      _thumbnails?.lq
    ];
    var thumbnailListName = ["FULL HD", "HD", "HQ", "SD", "LQ"];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await _fetchYoutubeData();
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _videoDetails?.defaultThumbnail != null
                        ? Image.network(_videoDetails!.defaultThumbnail!)
                        : const SizedBox.shrink(),
                    const SizedBox(height: 20),
                    _buildCarousel(thumbnailsList, thumbnailListName),
                    const SizedBox(height: 20),
                    _buildVideoDetailsCard(context),
                    const SizedBox(height: 20),
                    _buildUploaderDetailsCard(context)
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildCarousel(
      List<String?> thumbnailsList, List<String> thumbnailListName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("All Thumbnail Sizes"),
        const Divider(),
        CarouselSlider(
          options: CarouselOptions(
            disableCenter: true,
            autoPlay: true,
          ),
          items: thumbnailsList
              .map(
                (item) => Card(
                  child: Column(
                    children: [
                      item != null
                          ? Image.network(item, fit: BoxFit.cover, height: 100)
                          : const SizedBox.shrink(),
                      Text(thumbnailListName[thumbnailsList.indexOf(item)])
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _buildVideoDetailsCard(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Video Details',
            ),
            const Divider(),
            Text('Title: ${_videoDetails?.title ?? 'N/A'}'),
            Text('View Count: ${_videoDetails?.viewCount.toString() ?? 'N/A'}'),
          ],
        ),
      ),
    );
  }

  Widget _buildUploaderDetailsCard(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Uploader Details',
            ),
            const Divider(),
            Text('Uploader: ${_channelDetails?.name ?? 'N/A'}'),
            Text('Channel ID: ${_channelDetails?.id ?? 'N/A'}'),
            Text('Username: ${_channelDetails?.username ?? 'N/A'}'),
          ],
        ),
      ),
    );
  }
}
```
