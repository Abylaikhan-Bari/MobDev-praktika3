import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatefulWidget {
  @override
  _AnimatedSizeScreenState createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen>
    with TickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Animated Size Screen'),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment
        : MainAxisAlignment.center,
      children: [
        AnimatedSize(
          vsync: this,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Container(
            width: 200,
            height: _isExpanded ? 200 : 100,
            color: Colors.blue,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text(_isExpanded ? 'Shrink' : 'Expand'),
              ),
            ),
          ),
        ),
      ],
    ),
    ),
    );
  }
}