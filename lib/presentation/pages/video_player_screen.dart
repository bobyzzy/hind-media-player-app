import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

@RoutePage()
class VideoPlayerScreen extends StatelessWidget {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyVideoPlayer();
  }
}

class MyVideoPlayer extends StatefulWidget {
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Инициализация контроллера видеоплеера
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    // Инициализация контроллера Chewie
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      // Отключаем управление Chewie, так как мы добавим свои кнопки
      showControls: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chewie Video Player'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Chewie(
                controller: _chewieController,
              ),
              // Добавляем кнопки перемотки видео
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.replay_10),
                    onPressed: () {
                      // Перемотка назад на 10 секунд
                      _videoPlayerController.seekTo(
                          _videoPlayerController.value.position -
                              Duration(seconds: 10));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.forward_10),
                    onPressed: () {
                      // Перемотка вперед на 10 секунд
                      _videoPlayerController.seekTo(
                          _videoPlayerController.value.position +
                              Duration(seconds: 10));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
