import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import 'package:video_player/video_player.dart';

import '../widgets/widgets.dart';

//TODO!: нужен рефакторинг(особенно названия переменных)

@RoutePage()
class VideoPlayerScreen extends StatefulWidget {
  var showBottomBar = false;
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isOverlayVisible = true;
  bool _hasVolume = true;
  bool _isLandScapeMode = false;
  double sliderValue = 0;
  double bufferValue = 0;
  String? currectTime;
  String? totalTime;
  void _updateSliderPosition() {
    setState(() {
      sliderValue = _controller.value.position.inSeconds.toDouble();
    });
  }

  String formatDuration(Duration duration) {
    final HH = (duration.inHours).toString().padLeft(2, '0');
    final mm = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final ss = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return '$HH:$mm:$ss';
  }

  void _updateTime() {
    _controller.addListener(() {
      Duration duration =
          Duration(milliseconds: _controller.value.position.inMilliseconds);
      currectTime = formatDuration(duration);

      Duration endPoint = Duration(
          seconds: _controller.value.duration.inSeconds -
              _controller.value.position.inSeconds);

      totalTime = formatDuration(endPoint);

      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4'))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _updateTime();
          _controller.addListener(() {
            if (_controller.value.isPlaying &&
                _controller.value.position < _controller.value.duration) {
              setState(() {
                sliderValue = _controller.value.position.inSeconds.toDouble();
                bufferValue = _controller.value.buffered.isNotEmpty
                    ? _controller.value.buffered.last.end.inSeconds.toDouble()
                    : 0.0;
              });
            }
          });
          _controller.addListener(() {
            _updateSliderPosition(); // Добавим вызов при перемотке видео
          });
        });
      });
  }

  void _upadateProgressBar(double value) {
    setState(() {
      sliderValue = value;
    });
    _controller.seekTo(Duration(seconds: value.toInt()));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOverlayVisible = !_isOverlayVisible;
        });
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : const CircularProgressIndicator(),
            ),
            AnimatedOpacity(
              opacity: _isOverlayVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.white),
                        onPressed: () => context.popRoute(),
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: _isOverlayVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: const Color.fromRGBO(18, 18, 18, 0.4),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50,
                        child: CustomProggresBar(
                          strokeColor: const Color(0xFF786A5D).withOpacity(0.3),
                          activeColor: const Color(0xFFE50817),
                          bufferColor: Color(0xFF9E968D).withOpacity(0.7),
                          thumbColor: Colors.white,
                          value: sliderValue,
                          bufferValue: bufferValue,
                          min: 0,
                          max: _controller.value.duration.inSeconds.toDouble(),
                          onChanged: _upadateProgressBar,
                          sizeDevice: Size(width, 50),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            currectTime.toString(),
                            style: AppFonts.REGULAR_14,
                          ),
                          Text(
                            "- ${totalTime.toString()}",
                            style: AppFonts.REGULAR_14,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(_hasVolume
                                ? Icons.volume_up
                                : Icons.volume_off_rounded),
                            onPressed: () {
                              if (_hasVolume) {
                                setState(() {
                                  _hasVolume = !_hasVolume;
                                  _controller.setVolume(0);
                                });
                              } else {
                                _controller.setVolume(1);
                                setState(() {
                                  _hasVolume = !_hasVolume;
                                });
                              }
                            },
                          ),
                          const Spacer(),
                          IconButton(
                            color: Colors.white,
                            iconSize: 30,
                            icon: const Icon(Icons.skip_previous),
                            onPressed: () {
                              _controller.seekTo(Duration(
                                  seconds: (sliderValue + -10).toInt()));
                            },
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(178, 35, 35, 1),
                            ),
                            child: IconButton(
                              iconSize: 40,
                              color: Colors.white,
                              icon: Icon(_controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow),
                              onPressed: () {
                                setState(() {
                                  if (_controller.value.isPlaying) {
                                    _controller.pause();
                                  } else {
                                    _controller.play();
                                  }
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            color: Colors.white,
                            onPressed: () {
                              _controller.seekTo(Duration(
                                  seconds: (sliderValue + 10).toInt()));
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.skip_next),
                          ),
                          const Spacer(),
                          IconButton(
                              color: Colors.white,
                              iconSize: 30,
                              icon: const Icon(Icons.fullscreen),
                              onPressed: () {
                                if (_isLandScapeMode) {
                                  SystemChrome.setPreferredOrientations(
                                    [DeviceOrientation.portraitUp],
                                  );
                                  setState(() {
                                    _isLandScapeMode = false;
                                  });
                                } else {
                                  SystemChrome.setPreferredOrientations(
                                    [
                                      DeviceOrientation.landscapeLeft,
                                      DeviceOrientation.landscapeRight,
                                    ],
                                  );
                                  setState(() {
                                    _isLandScapeMode = true;
                                  });
                                }
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}
