import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  File imageData;
  DateTime dateData;
  Color colorData;
  String captionData;

  SecondScreen(
      {super.key,
      required this.imageData,
      required this.dateData,
      required this.colorData,
      required this.captionData});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    String date = DateFormat('dd-MM-yyyy').format(widget.dateData);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
      ),
      body: Center(
          child: Column(
        children: [
          Image(
            image: FileImage(widget.imageData),
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Published at : $date'),
                    Row(
                      children: [
                        const Text('Color :'),
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: widget.colorData,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      widget.captionData,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
