import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager_plus/wallpaper_manager_plus.dart';

class Fullscreen extends StatefulWidget {
  final String imgurl;

  const Fullscreen({super.key, required this.imgurl});

  @override
  State<Fullscreen> createState() => _FullscreenState();
}

class _FullscreenState extends State<Fullscreen> {

  Future<void>setWallPaper() async{
    int location = WallpaperManagerPlus.homeScreen;
    var file = await DefaultCacheManager().getSingleFile(widget.imgurl);
    await WallpaperManagerPlus().setWallpaper(file, location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cool Wallpapers',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            child: Image.network(widget.imgurl),
          )),
          InkWell(
            onTap: (){
              setWallPaper();
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.blue,
              child: const Center(child: Text('Set Wallpaper',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
