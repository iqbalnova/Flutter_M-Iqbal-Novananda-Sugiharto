import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imgUrl;
  final String nama;
  final String desc;
  const CardWidget(
      {Key? key, required this.imgUrl, required this.nama, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 250,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 236, 236),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImage(),
              const Spacer(),
              buildText(),
              const Spacer(),
            ],
          ),
        ),
      );

  Widget buildImage() => Image.network(
        imgUrl,
        height: 150,
        width: double.infinity,
        fit: BoxFit.cover,
      );

  Widget buildText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold), //TextStyle
              ),
              const SizedBox(height: 4),
              Text(
                desc,
                style: const TextStyle(fontSize: 14), //TextStyle
              ),
            ],
          ),
        ),
      );
}
