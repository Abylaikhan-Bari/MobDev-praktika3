import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool _isOpacityVisible = true;

  void _toggleOpacity() {
    setState(() {
      _isOpacityVisible = !_isOpacityVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity Screen'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _isOpacityVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleOpacity,
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.opacity),
      ),
    );
  }
}
