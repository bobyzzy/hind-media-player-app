import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerService {
  late VideoPlayerController _controller;
  VideoPlayerController get controller => controller;
  bool _isOverlayVisible = true;
  get isOverlayVisible => _isOverlayVisible;
  bool _hasVolume = true;
  get hasVolume => _hasVolume;
  bool _isLandScapeMode = false;
  get isLandScapeMode => _isLandScapeMode;
  double sliderValue = 0;
  double bufferValue = 0;
  String? currectTime;
  String? totalTime;

  Future<void> initialize() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _controller = VideoPlayerController.network(
        'https://hindi.uz/media/media/movies/file_example_MP4_640_3MG_jh8VPAw.mp4');
    _controller.initialize().then((_) {
      _controller.play();
      _updateTime();
      _controller.addListener(() {
        if (_controller.value.isPlaying &&
            _controller.value.position < _controller.value.duration) {
          sliderValue = _controller.value.position.inSeconds.toDouble();
          bufferValue = _controller.value.buffered.isNotEmpty
              ? _controller.value.buffered.last.end.inSeconds.toDouble()
              : 0.0;
        }
      });
      _controller.addListener(() {
        _updateSliderPosition();
      });
    });
  }

  void play() {
    _controller.play();
  }

  void dispose() {
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void _updateSliderPosition() {
    sliderValue = _controller.value.position.inSeconds.toDouble();
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
    });
  }

  void upadateProgressBar(double value) {
    sliderValue = value;
    _controller.seekTo(Duration(seconds: value.toInt()));
  }

  void toggleVolume() {
    if (_hasVolume) {
      _controller.setVolume(0);
    } else {
      _controller.setVolume(1);
    }
    _hasVolume = !_hasVolume;
  }

  void skipBackward() {
    _controller.seekTo(Duration(seconds: (sliderValue - 10).toInt()));
  }

  void skipForward() {
    _controller.seekTo(Duration(seconds: (sliderValue + 10).toInt()));
  }

  void togglePlayPause() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  void toggleFullScreen() {
    if (_isLandScapeMode) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
    _isLandScapeMode = !_isLandScapeMode;
  }
}
