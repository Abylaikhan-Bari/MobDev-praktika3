import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  @override
  _AnimatedPositionedScreenState createState() => _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool _isPositionedRight = false;

  void _togglePosition() {
    setState(() {
      _isPositionedRight = !_isPositionedRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Positioned Screen'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            top: 0,
            left: _isPositionedRight ? null : 0,
            right: _isPositionedRight ? 0 : null,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePosition,
        tooltip: 'Toggle Position',
        //child: Icon(Icons.positioned),
      ),
    );
  }
}
