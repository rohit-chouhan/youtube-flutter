<p align="center"><img width="250" src="https://www.youtube.com/img/desktop/supported_browsers/yt_logo_rgb_light.png"/></p>
<p align="left">This package is designed to be a comprehensive solution for interacting with YouTube videos in Flutter applications. It offers functionalities to obtain detailed information about a video, such as its title, author, type, dimensions, provider details, and more. Additionally, it provides access to different qualities of video thumbnails.

With this package, developers can effortlessly integrate YouTube video features into their Flutter applications, enhancing the overall user experience.</p>



### 🚀 Video Information
| Method           | Description                                   |
| ---------------- | --------------------------------------------- |
| `title()` | Returns the title of the YouTube video. |
| `authorName()` | Returns the author name of the YouTube video. |
| `authorUrl()` | Returns the author URL of the YouTube video. |
| `type()` | Returns the type of the YouTube video. |
| `height()` | Returns the height of the YouTube video. |
| `width()` | Returns the width of the YouTube video. |
| `version()` | Returns the version of the YouTube video. |
| `providerName()` | Returns the provider name of the YouTube video. |
| `providerUrl()` | Returns the provider URL of the YouTube video. |
| `thumbnailHeight()` | Returns the thumbnail height of the YouTube video. |
| `thumbnailWidth()` | Returns the thumbnail width of the YouTube video. |
| `thumbnail()` | Returns the thumbnail URL of the YouTube video. |
| `html()` | Returns the HTML code of the YouTube video. |

#### Example
```dart
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
Text(Youtube(youtubeId: 'a0Da8TNMTyM').html())
```

### 🚀 Thumbnail
To obtain a YouTube thumbnail, use the YouTubeThumbnail class with the video's ID as a string and the desired size.

| Image Function | Size       |
| -------------- | ---------- |
| `hd()`             | 1280x720   |
| `standard()`       | 640x480    |
| `hq()`             | 480x360    |
| `mq()`             | 320x180    |
| `defaults()`       | 120x90     |

#### Example

```dart
Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').hd()),
Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').standard()),
Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').hq()),
Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').mq()),
Image.network(YoutubeThumbnail(youtubeId: 'a0Da8TNMTyM').small()),
```