import 'package:flutter/material.dart';

class ScaleTransitionScreen extends StatefulWidget {
  @override
  _ScaleTransitionScreenState createState() => _ScaleTransitionScreenState();
}

class _ScaleTransitionScreenState extends State<ScaleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
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
        title: Text('Scale Transition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
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
