<p align="center"><img width="250" src="https://www.youtube.com/img/desktop/supported_browsers/yt_logo_rgb_light.png"/></p>
<p align="center">Download Youtube Videos, Thumbnail and all.</p>

### 🚀 Thumbnail
To get youtube thumbnail use YouTubeThumbnail class, with the parameter of youtube video id as string, and than video size.

| image function  | size  |
| ------------ | ------------ |
|  hd |  1280x720 |
|  standard | 640x480  |
|  hq | 480x360  |
|  mq | 320x180 |
|  defaults | 120x90  |

```dart
Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hd()),
Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').standard()),
Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').hq()),
Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').mq()),
Image.network(YoutubeThumbnail(youtubeId: 'TicGJQqrq2M').small()),
```

## Others feature coming soon