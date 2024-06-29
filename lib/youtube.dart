import 'dart:convert';
import 'package:http/http.dart' as http;

class Youtube {
  static ChannelDetails _channelDetails =
      ChannelDetails(name: '', id: '', username: '');
  static VideoDetails _videoDetails =
      VideoDetails(title: '', duration: 0, viewCount: 0, defaultThumbnail: '');
  static Thumbnails _thumbnails = Thumbnails(
    fullhd: 'https://placehold.co/600x400/F00/FFF?text=Image+Size+Not+Found',
    hd: 'https://placehold.co/600x400/F00/FFF?text=Image+Size+Not+Found',
    sd: 'https://placehold.co/600x400/F00/FFF?text=Image+Size+Not+Found',
    hq: 'https://placehold.co/600x400/F00/FFF?text=Image+Size+Not+Found',
    lq: 'https://placehold.co/600x400/F00/FFF?text=Image+Size+Not+Found',
  );
  static late String _videoId;

  static Future<void> config({required String videoId}) async {
    _videoId = videoId;
    await callApi();
  }

  static ChannelDetails get channelDetails => _channelDetails;
  static VideoDetails get videoDetails => _videoDetails;
  static Thumbnails get thumbnails => _thumbnails;

  static Future<void> callApi() async {
    var url = 'https://flutter-youtube.api.rohitchouhan.com/?video=$_videoId';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        _updateDetails(jsonResponse);
      } else {
        throw HttpException('Failed to load video data');
      }
    } catch (e) {
      print('Error fetching video data: $e');
    }
  }

  static void _updateDetails(Map<String, dynamic> jsonResponse) {
    _channelDetails = ChannelDetails(
      name: jsonResponse['uploader'] ?? '',
      id: jsonResponse['channel_id'] ?? '',
      username: jsonResponse['uploader_id'] ?? '',
    );
    _videoDetails = VideoDetails(
      title: jsonResponse['title'] ?? '',
      duration: jsonResponse['duration'] ?? 0,
      viewCount: jsonResponse['view_count'] ?? 0,
      defaultThumbnail: jsonResponse['thumbnail'] ?? '',
    );
    _thumbnails = Thumbnails(
      fullhd: _getUrlByResolution("1920x1080", jsonResponse),
      hd: _getUrlByResolution("1280x720", jsonResponse),
      sd: _getUrlByResolution("640x480", jsonResponse),
      hq: _getUrlByResolution("480x360", jsonResponse),
      lq: _getUrlByResolution("336x188", jsonResponse),
    );
  }

  static String _getUrlByResolution(
      String resolution, Map<String, dynamic> jsonResponse) {
    for (var thumbnail in jsonResponse['thumbnails'] as List<dynamic>) {
      if (thumbnail['resolution'] == resolution) {
        return thumbnail['url'];
      }
    }
    return jsonResponse['thumbnails'].last['url'] ?? '';
  }
}

class ChannelDetails {
  String name;
  String id;
  String username;

  ChannelDetails(
      {required this.name, required this.id, required this.username});
}

class VideoDetails {
  String title;
  int duration;
  int viewCount;
  String defaultThumbnail;

  VideoDetails(
      {required this.title,
      this.duration = 0,
      this.viewCount = 0,
      this.defaultThumbnail = ''});
}

class Thumbnails {
  String fullhd;
  String hd;
  String sd;
  String hq;
  String lq;

  Thumbnails(
      {required this.fullhd,
      required this.hd,
      required this.sd,
      required this.hq,
      required this.lq});
}

class HttpException implements Exception {
  final String message;
  HttpException(this.message);
  @override
  String toString() => 'HttpException: $message';
}
