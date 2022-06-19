library youtube;

///Class for returning a thumbnail of a youtube video
class YoutubeThumbnail {
  String? _id;
  
  /// Returns the YouTube video ID.
  YoutubeThumbnail({youtubeId}) {
    _id = youtubeId;
  }

  ///Return (maxresdefault) image as size of 1280x720
  hd(){
    return 'https://img.youtube.com/vi/$_id/hqdefault.jpg';
  }

  ///Return (sddefault) image as size of 640x480
  standard(){
    return 'https://img.youtube.com/vi/$_id/sddefault.jpg';
  }

  ///Return (hqdefault) image as size of 480x360
  hq() {
    return 'https://img.youtube.com/vi/$_id/hqdefault.jpg';
  }

  ///Return (mqdefault) image as size of 320x180
  mq() {
    return 'https://img.youtube.com/vi/$_id/mqdefault.jpg';
  }

  //Return (default) image as size of 120x90
  small() {
    return 'https://img.youtube.com/vi/$_id/default.jpg';
  }
}
