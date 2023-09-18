import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImageCircle extends StatelessWidget {
  const CachedImageCircle({Key? key, required this.urlPath, this.height= 100.0}) : super(key: key);
  final String urlPath;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: height,
      height: height,
      imageUrl: urlPath,
      imageBuilder:
          (BuildContext context, ImageProvider<Object> imageProvider) =>
              CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: imageProvider,
        radius: height/2,
      ),
      placeholder: (BuildContext context, String url) =>  CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: height/2,
        child: const CircularProgressIndicator(),
      ),
      errorWidget: (BuildContext context, String url, _) =>  CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: height/2,
        child: const Icon(Icons.error),
      ),
    );
  }
}
