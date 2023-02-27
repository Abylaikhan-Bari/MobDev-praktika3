import 'package:flutter/material.dart';
import 'animated_opacity_screen.dart';
import 'animated_positioned_screen.dart';
import 'animated_size_screen.dart';
import 'position_transition_screen.dart';
import 'slide_transition_screen.dart';
import 'scale_transition_screen.dart';
import 'size_transition_screen.dart';
import 'rotation_transition_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/animatedOpacity': (context) => AnimatedOpacityScreen(),
        '/animatedPositioned': (context) => AnimatedPositionedScreen(),
        '/animatedSize': (context) => AnimatedSizeScreen(),
        '/positionTransition': (context) => AnimatedLogoScreen(),
        '/slideTransition': (context) => SlideTransitionScreen(),
        '/scaleTransition': (context) => ScaleTransitionScreen(),
        '/sizeTransition': (context) => SizeTransitionScreen(),
        '/rotationTransition': (context) => RotationTransitionScreen(),
      },

    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ushinshi praktika'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedOpacity');
              },
              child: Text('Animated Opacity'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedPositioned');
              },
              child: Text('Animated Positioned'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedSize');
              },
              child: Text('Animated Size'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/positionTransition');
              },
              child: Text('Position Transition'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/slideTransition');
              },
              child: Text('Slide Transition'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/scaleTransition');
              },
              child: Text('Scale Transition'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sizeTransition');
              },
              child: Text('Size Transition'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/rotationTransition');
              },
              child: Text('Rotation Transition'),
            ),
          ],
        ),
      ),
    );
  }
}
