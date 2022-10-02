import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/1624496/pexels-photo-1624496.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/414144/pexels-photo-414144.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/3617500/pexels-photo-3617500.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ImgCardWidget(
                imageUrl:
                    'https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?auto=compress&cs=tinysrgb&w=1600'),
          ]),
    );
  }
}

class ImgCardWidget extends StatelessWidget {
  final String imageUrl;
  const ImgCardWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            builder: (context) => SizedBox(
                height: 400,
                child: GestureDetector(
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Image.network(
                              imageUrl,
                              height: 500,
                              fit: BoxFit.cover,
                            ),
                          )),
                  child: Image.network(
                    imageUrl,
                    height: 200,
                    width: 250,
                    fit: BoxFit.contain,
                  ),
                )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
