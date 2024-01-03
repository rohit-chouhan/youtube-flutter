import 'dart:convert';
import 'package:http/http.dart' as http;

/// Class for returning information about a YouTube video
class Youtube {
  late String _id;
  late String _title;
  late String _authorName;
  late String _authorUrl;
  late String _type;
  late int _height;
  late int _width;
  late String _version;
  late String _providerName;
  late String _providerUrl;
  late int _thumbnailHeight;
  late int _thumbnailWidth;
  late String _thumbnailUrl;
  late String _html;

  Youtube({required String youtubeId}) {
    _id = youtubeId;
    video(_id);
  }

  Future<void> video(String id) async {
    var url = Uri.parse(
        'https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=$id&format=json');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String data = response.body;
        if (data == 'Not Found') {
          throw Exception('Youtube video not exist with provided id.');
        } else {
          _title = jsonDecode(data)['title'];
          _authorName = jsonDecode(data)['author_name'];
          _authorUrl = jsonDecode(data)['author_url'];
          _type = jsonDecode(data)['type'];
          _height = jsonDecode(data)['height'];
          _width = jsonDecode(data)['width'];
          _version = jsonDecode(data)['version'];
          _providerName = jsonDecode(data)['provider_name'];
          _providerUrl = jsonDecode(data)['provider_url'];
          _thumbnailHeight = jsonDecode(data)['thumbnail_height'];
          _thumbnailWidth = jsonDecode(data)['thumbnail_width'];
          _thumbnailUrl = jsonDecode(data)['thumbnail_url'];
          _html = jsonDecode(data)['html'];
        }
      } else {
        // Handle error case by throwing an exception
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Handle exception by throwing an exception
      throw Exception('Error: $e');
    }
  }

  /// Return title of video
  title() {
    return _title;
  }

  /// Return author name of video
  authorName() {
    return _authorName;
  }

  /// Return author URL of video
  authorUrl() {
    return _authorUrl;
  }

  /// Return type of video
  type() {
    return _type;
  }

  /// Return height of video
  height() {
    return _height;
  }

  /// Return width of video
  width() {
    return _width;
  }

  /// Return version of video Youtube
  version() {
    return _version;
  }

  /// Return provider name of video
  providerName() {
    return _providerName;
  }

  /// Return provider URL of video
  providerUrl() {
    return _providerUrl;
  }

  /// Return thumbnail height of video
  thumbnailHeight() {
    return _thumbnailHeight;
  }

  /// Return thumbnail width of video
  thumbnailWidth() {
    return _thumbnailWidth;
  }

  /// Return thumbnail URL of video
  thumbnail() {
    return _thumbnailUrl;
  }

  /// Return IFrame HTML code of video
  html() {
    return _html;
  }
}
