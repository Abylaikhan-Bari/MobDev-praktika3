import 'package:flutter/material.dart';

class RotationTransitionScreen extends StatefulWidget {
  @override
  _RotationTransitionScreenState createState() =>
      _RotationTransitionScreenState();
}

class _RotationTransitionScreenState extends State<RotationTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotation Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: _animation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _controller.forward();
              },
              child: Text('Start Animation'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _controller.reverse();
              },
              child: Text('Reverse Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
