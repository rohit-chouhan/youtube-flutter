library youtube;
import 'dart:convert';
import 'package:http/http.dart' as http;
///Class for returning a thumbnail of a youtube video
class Youtube {
  String? _title;
  String? _author;
  String? _authorChannel;

  video(id) async {
     var url = Uri.parse('https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=$id&format=json');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String data = response.body;
        _title = jsonDecode(data)['title'];
        _author = jsonDecode(data)['author_name'];
        _authorChannel = jsonDecode(data)['author_url'];
       
       // return decodedData;
      } else {
      //  return 'failed';
      }
    } catch (e) {
      //return 'failed';
    }
     return this;
  }


  ///Return title of video
  title(){
    return _title;
  }

  ///Return author of video
  author(){
    return _author;
  }

  ///Return author channel of video
  authorChannel(){
    return _authorChannel;
  }
}
