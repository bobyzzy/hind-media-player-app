import 'package:flutter/material.dart';

///Custom progress bar to video_player app,
///
///[max] to set this field you should add the instance of VideoPlayerController and set like this field [max] :
///_controller.value.duration.inSeconds.toDouble(),
///
///[bufferValue] it is must field to add this field create an instance of VideoPlayerController and set field [bufferValue] :
///_controller.addListener(() { bufferValue = _controller.value.buffered.isNotEmpty?._controller.value.buffered.last.end.inSeconds.toDouble()});
///
///to correctly set [value] must be added an zero value and then in VideoPlayerController must be added an listener:
/// _controller.addListener(() { sliderValue = _controller.value.position.inSeconds.toDouble(); }); it will helps to change the value in progress bar
///
/// function [onChanged] looks like this onChanged: (value) {
///                           setState(() {
///                             sliderValue = value;
///                           });
///                           _controller
///                               .seekTo(Duration(seconds: value.toInt()));
///                         },
class CustomProgressBar extends StatefulWidget {
  final double value;
  final double bufferValue;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final Color strokeColor;
  final Color activeColor;
  final Color bufferColor;
  final Color thumbColor;
  final Size sizeDevice;

  CustomProgressBar({
    required this.value,
    required this.bufferValue,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.strokeColor,
    required this.activeColor,
    required this.bufferColor,
    required this.thumbColor,
    required this.sizeDevice,
  });

  @override
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  bool isDragging = false;
  Size get _size => widget.sizeDevice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        setState(() {
          isDragging = true;
        });
      },
      onHorizontalDragUpdate: (details) {
        double newPosition = details.globalPosition.dx / MediaQuery.of(context).size.width;
        double value = widget.min + (widget.max - widget.min) * newPosition;
        if (value >= widget.min && value <= widget.max) {
          widget.onChanged(value);
        }
      },
      onHorizontalDragEnd: (details) {
        setState(() {
          isDragging = false;
        });
      },
      child: CustomPaint(
        size: _size,
        painter: SliderPainter(
          strokeColor: widget.strokeColor,
          activeColor: widget.activeColor,
          thumbColor: widget.thumbColor,
          bufferColor: widget.bufferColor,
          value: widget.value,
          bufferValue: widget.bufferValue,
          min: widget.min,
          max: widget.max,
          isDragging: isDragging,
        ),
      ),
    );
  }
}

class SliderPainter extends CustomPainter {
  final double value;
  final double bufferValue;
  final double min;
  final double max;
  final Color strokeColor;
  final Color activeColor;
  final Color bufferColor;
  final Color thumbColor;
  bool isDragging;
  bool bufferStateDrawn = false;

  SliderPainter({
    required this.value,
    required this.bufferValue,
    required this.min,
    required this.max,
    required this.isDragging,
    required this.strokeColor,
    required this.activeColor,
    required this.bufferColor,
    required this.thumbColor,
  });

  void _drawFixedLine(Canvas canvas, Size size, Paint paintLine) {
    if (min != max) {
      final double adjustedBufferValue = (bufferValue - min) / (max - min);
      final double bufferXPos = size.width * adjustedBufferValue;

      // Draw the fixed grey line
      if (!bufferXPos.isNaN) {
        canvas.drawLine(
          Offset(bufferXPos, size.height / 2),
          Offset(size.width, size.height / 2),
          paintLine,
        );
      }
    }
  }

  void _drawSlider(
      Canvas canvas, Size size, Paint paintBuffer, Paint paintValue, Paint paintThumb) {
    if (min != max) {
      final double adjustedBufferValue = (bufferValue - min) / (max - min);
      final double bufferXPos = size.width * adjustedBufferValue;

      final double adjustedValue = (value - min) / (max - min);
      final double xPos = size.width * adjustedValue;

      // Draw the buffer line
      if (!bufferStateDrawn && bufferXPos.isFinite && bufferXPos >= 0 && bufferXPos <= size.width) {
        canvas.drawLine(
          Offset(0, size.height / 2),
          Offset(bufferXPos, size.height / 2),
          paintBuffer,
        );
        bufferStateDrawn = true;
      }

      // Draw the value line and thumb
      if (xPos.isFinite && xPos >= 0 && xPos <= size.width) {
        canvas.drawLine(
          Offset(0, size.height / 2),
          Offset(xPos, size.height / 2),
          paintValue,
        );

        canvas.drawCircle(
          Offset(xPos, size.height / 2),
          10.0,
          paintThumb,
        );
      }
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintLine = Paint()
      ..color = strokeColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    final Paint paintBuffer = Paint()
      ..color = bufferColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    final Paint paintValue = Paint()
      ..color = activeColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    final Paint paintThumb = Paint()
      ..color = thumbColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    _drawFixedLine(canvas, size, paintLine);
    _drawSlider(canvas, size, paintBuffer, paintValue, paintThumb);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
