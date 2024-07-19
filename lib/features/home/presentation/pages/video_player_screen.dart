// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/core/extensions/media_query.dart';
import 'package:hind_app/features/home/domain/entities/stream_entity.dart';
import 'package:hind_app/core/theme/app_fonts.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoPlayerScreen extends StatefulWidget {
  var showBottomBar = false;
  final StreamEntity streamEntity;

  VideoPlayerScreen({required this.streamEntity});

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
      Duration duration = Duration(milliseconds: _controller.value.position.inMilliseconds);
      currectTime = formatDuration(duration);

      Duration endPoint = Duration(
          seconds: _controller.value.duration.inSeconds - _controller.value.position.inSeconds);

      totalTime = formatDuration(endPoint);

      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4'))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _updateTime();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
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
                  : const CircularProgressIndicator.adaptive(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: AnimatedSlide(
                offset: _isOverlayVisible ? Offset(0, 0) : Offset(0, -1),
                duration: Duration(milliseconds: 200),
                child: Container(
                  width: context.width,
                  height: context.height * 0.1,
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
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: AnimatedSlide(
                offset: _isOverlayVisible ? Offset(0, 0) : Offset(0, 1),
                duration: Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black12,
                  width: context.width,
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                      ? context.height * 0.2
                      : context.height * 0.35,
                  child: Container(
                    color: const Color.fromRGBO(18, 18, 18, 0.4),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VideoProgressIndicator(
                          allowScrubbing: true,
                          _controller,
                          colors: VideoProgressColors(
                            playedColor: Colors.red,
                            backgroundColor: Colors.grey,
                            bufferedColor: Colors.grey.shade300,
                          ),
                        ),
                        Gap(10),
                        // SizedBox(
                        //   height: 50,
                        //   child: CustomProgressBar(
                        //     strokeColor: const Color(0xFF786A5D).withOpacity(0.3),
                        //     activeColor: const Color(0xFFE50817),
                        //     bufferColor: Color(0xFF9E968D).withOpacity(0.7),
                        //     thumbColor: Colors.white,
                        //     value: sliderValue,
                        //     bufferValue: bufferValue,
                        //     min: 0,
                        //     max: _controller.value.duration.inSeconds.toDouble(),
                        //     onChanged: _upadateProgressBar,
                        //     sizeDevice: Size(width, 50),
                        //   ),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              currectTime ?? '00:00:00',
                              style: AppFonts.REGULAR_14,
                            ),
                            Text(
                              "- ${totalTime ?? '00:00:00'}",
                              style: AppFonts.REGULAR_14,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: Icon(_hasVolume ? Icons.volume_up : Icons.volume_off_rounded),
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
                                _controller.seekTo(Duration(seconds: (sliderValue + -10).toInt()));
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
                                icon: Icon(
                                    _controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
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
                                _controller.seekTo(Duration(seconds: (sliderValue + 10).toInt()));
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
