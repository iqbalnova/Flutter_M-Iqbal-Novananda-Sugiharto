import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: Center(
          child: GestureDetector(
        onTap: () => setState(() => isTapped = !isTapped),
        child: AnimatedContainer(
          width: isTapped ? 350 : 200,
          height: isTapped ? 350 : 200,
          duration: const Duration(seconds: 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/296/920/HD-wallpaper-dark-night-aesthetic-nigth-thumbnail.jpg'))),
        ),
      )),
    );
  }
}
