<p align="center"><img width="250" src="https://www.youtube.com/img/desktop/supported_browsers/yt_logo_rgb_light.png"/></p>

This Flutter package provides functionalities to retrieve and manage YouTube video information, including details about the video and the uploader, as well as various thumbnail resolutions.

[![GitHub](https://img.shields.io/badge/Rohit_Chouhan-GitHub-black?logo=github)](https://www.github.com/rohit-chouhan)
_[![Sponsor](https://img.shields.io/badge/Sponsor-Become_A_Sponsor-blue?logo=githubsponsors)](https://github.com/sponsors/rohit-chouhan)_

- [Configuration](#configuration)
- [Accessing Video Information](#accessing-video-information)
  - [ChannelDetails](#channeldetails)
  - [VideoDetails](#videodetails)
  - [Thumbnails](#thumbnails)
  - [Video Infortimation](#video-infortimation)
- [Example](#example)
- [Report bugs or issues](#report-bugs-or-issues)

## Configuration

Before fetching video details, you need to configure the package with the video ID:

```dart
await Youtube.config(videoId: 'your_video_id');
```

## Accessing Video Information

You can access the video and channel details using the provided getters:

```dart
var channelDetails = Youtube.channelDetails;
var videoDetails = Youtube.videoDetails;
var thumbnails = Youtube.thumbnails;
```

### ChannelDetails

Holds details about the YouTube channel.

- #### Properties

  - String `name`: The name of the uploader.
  - String `id`: The ID of the channel.
  - String `username`: The username of the uploader.

- #### Example

```dart
var channelDetails = Youtube.channelDetails;
print('Channel Name: ${channelDetails.name}');
print('Channel ID: ${channelDetails.id}');
print('Channel Username: ${channelDetails.username}');
```

### VideoDetails

Holds details about the YouTube video.

- #### Properties

  - String `title`: The title of the video.
  - int `duration`: The duration of the video in seconds.
  - int `viewCount`: The view count of the video.
  - String `defaultThumbnail`: The URL of the default thumbnail.

- #### Example

```dart
var videoDetails = Youtube.videoDetails;
print('Video Title: ${videoDetails.title}');
print('Video Duration: ${videoDetails.duration} seconds');
print('Video View Count: ${videoDetails.viewCount}');
print('Default Thumbnail: ${videoDetails.defaultThumbnail}');
```

### Thumbnails

Holds URLs for different resolutions of the video's thumbnails.

- #### Properties

  - String `fullhd`: URL for the Full HD thumbnail.
  - String `hd`: URL for the HD thumbnail.
  - String `sd`: URL for the SD thumbnail.
  - String `hq`: URL for the HQ thumbnail.
  - String `lq`: URL for the LQ thumbnail.

- #### Example

```dart
var thumbnails = Youtube.thumbnails;
print('Full HD Thumbnail: ${thumbnails.fullhd}');
print('HD Thumbnail: ${thumbnails.hd}');
print('SD Thumbnail: ${thumbnails.sd}');
print('HQ Thumbnail: ${thumbnails.hq}');
print('LQ Thumbnail: ${thumbnails.lq}');
```

### Video Infortimation <img width="60" src="https://media.istockphoto.com/id/1413057319/vector/coming-soon-stamp.jpg?s=612x612&w=0&k=20&c=A850iutLqA23gimKoaH1qUUhjRRLsHQF_d6SGbxwihc=">

- String `url` - URL of the video for allquality with direct streaming and downloading
- int `fps` - Frames per second
- String `resolution` - Resolution of the video
- String `audio` - Audio of the video
- int `filesize` - Filesize of the video
- String `quality` - Quality of the video
- String `videoExtension` - Video extension
- int `height` - Height of the video
- int `width` - Width of the video

## Example

👉 For a complete example, refer to the [Youtube package documentation](https://pub.dev/packages/youtube/example).

## Report bugs or issues

You are welcome to open a _[ticket](https://github.com/rohit-chouhan/youtube-flutter/issues)_ on github if any 🐞 problems arise. New ideas are always welcome.

> _Note:_ This package uses third-party api to fetch data.
