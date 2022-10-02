import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  File? image;
  TextEditingController textController = TextEditingController();

  DateTime? dueDate;
  String dateTxt = '';
  final currentDate = DateTime.now();
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

  // Image Picker
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      // ignore: unnecessary_null_comparison
      if (imagePicked == null) return;
      image = File(imagePicked.path);
    });
  }

  // Date Picker
  Future getDate() async {
    final selectDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(currentDate.year + 5));

    setState(() {
      if (selectDate == null) return;
      dueDate = selectDate;
      dateTxt = DateFormat('dd-MM-yyyy').format(selectDate);
    });
  }

  // Color Change
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  // Color Picker Show
  void colorPicker() {
    showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Pilih'),
            onPressed: () {
              setState(() => currentColor = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Form',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Cover',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        await getImage();
                      },
                      child: const Text('Pilih File'))),
              SizedBox(
                child: image != null ? Text(image.toString()) : null,
              )
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Publish At',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                      decoration: InputDecoration(
                          icon: const Icon(Icons.calendar_today),
                          hintText: dateTxt != '' ? dateTxt : 'dd-mm-yyyy'),
                      readOnly: true,
                      onTap: () async {
                        await getDate();
                      })),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Color Theme',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                      decoration: InputDecoration(
                          icon: const Icon(Icons.color_lens),
                          hintText: "Pick a Color",
                          suffix: SizedBox(
                              height: 20,
                              width: 50,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: currentColor),
                              ))),
                      readOnly: true,
                      onTap: () {
                        colorPicker();
                      }))
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Caption',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueAccent)),
                  width: double.infinity,
                  child: TextField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10)),
                    maxLines: 6,
                    controller: textController,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    if (image == null ||
                        dueDate == null ||
                        textController.text == '' ||
                        // ignore: unnecessary_null_comparison
                        currentColor == const Color(0xff443a49)) {
                      return;
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return SecondScreen(
                            imageData: image!,
                            dateData: dueDate!,
                            colorData: currentColor,
                            captionData: textController.text);
                      })));
                    }
                  },
                  child: const Text('Submit'))),
        ],
      ),
    );
  }
}
