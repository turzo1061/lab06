import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab06 Advanced UI',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab06 Advance UI'),
        ),
        body: Column(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Expanded(
              child: Image.network(
                'https://picsum.photos/id/870/200/300?grayscale&blur=2',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
