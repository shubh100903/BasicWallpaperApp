import 'package:flutter/material.dart';
import 'package:wallpaper_app/wallpaper.dart';

void main() => runApp(new MyWallpaperApp());

class MyWallpaperApp extends StatelessWidget {
  const MyWallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const Wallpaper(),
    );
  }
}

// My Api key :- zrhG3xvHlL34PltRMhKKIZHyWDkiLNrzrDqjmxzg9R3MWLnGMCF6s4c3
// curated photo :- https://api.pexels.com/v1/curated


