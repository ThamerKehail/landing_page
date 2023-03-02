import 'package:flutter/material.dart';

class AnimatedCardWeb extends StatefulWidget {
  final String image;
  final String text;
  final BoxFit? fit;
  final bool? reverse;
  const AnimatedCardWeb(
      {Key? key,
      required this.image,
      required this.text,
      this.fit,
      this.reverse})
      : super(key: key);

  @override
  _AnimatedCardWebState createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))
        ..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_animationController);
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.tealAccent)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 200,
                width: 200,
                fit: widget.fit,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(widget.text),
            ],
          ),
        ),
      ),
    );
  }
}
