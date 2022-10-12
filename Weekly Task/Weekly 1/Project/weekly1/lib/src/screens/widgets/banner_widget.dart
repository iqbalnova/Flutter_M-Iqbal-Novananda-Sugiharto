import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.network(
            'https://cdn-asset.jawapos.com/wp-content/uploads/2019/01/tulus-ternyata-penggemar-berat-sheila-on-7_m_214212-560x355.jpeg'),
        Positioned.fill(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Selamat datang di aplikasi sheilaon7',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: (() {}), child: const Text('More Info'))
        ])),
      ],
    );
  }
}
