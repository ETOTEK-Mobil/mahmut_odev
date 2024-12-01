import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({super.key});

  @override
  State<ImagesPage> createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/etotek.png'),
          CachedNetworkImage(
            imageUrl:
                'https://etotek.com.tr/wp-content/uploads/2024/10/cropped-etotek-Photoroom.png', // Resmin URL'si
            placeholder: (context, url) =>
                const CircularProgressIndicator(), // Yüklenirken gösterilecek widget
            errorWidget: (context, url, error) =>
                const Icon(Icons.error), // Hata durumunda gösterilecek widget
          )
        ],
      )),
    );
  }
}
