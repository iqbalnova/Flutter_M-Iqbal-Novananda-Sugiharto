import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeScreen extends StatelessWidget {
  const BarcodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          NewBarcodeWidget(
            data: 'Alterra Academy',
          ),
          NewBarcodeWidget(
            data: 'Flutter Asik',
          ),
          NewBarcodeWidget(
            data: 'M Iqbal Novananda Sugiharto',
          ),
        ],
      )),
    );
  }
}

class NewBarcodeWidget extends StatelessWidget {
  final String data;
  const NewBarcodeWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          BarcodeWidget(
            barcode: Barcode.qrCode(
              errorCorrectLevel: BarcodeQRCorrectionLevel.high,
            ),
            data: data,
            width: 100,
            height: 100,
          ),
          Text(data)
        ],
      ),
    );
  }
}
