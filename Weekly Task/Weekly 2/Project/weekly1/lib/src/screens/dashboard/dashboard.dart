import 'package:flutter/material.dart';
import 'package:weekly1/src/screens/dashboard/widgets/banner_widget.dart';
import 'package:weekly1/src/screens/dashboard/widgets/card_widget.dart';
import 'package:weekly1/src/screens/dashboard/widgets/contact_widget.dart';
import 'package:weekly1/src/screens/dashboard/widgets/drawer_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _helpText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        title: Image.network(
          'https://www.sheilaon7.com/wp-content/uploads/2016/04/1x507Orange_0d707fec304ae621ce7d923a6a836576.png',
          width: 80,
          height: 40,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const BannerWidget(),
            ContactUsWidget(
                firstName: _firstName,
                lastName: _lastName,
                email: _email,
                helpText: _helpText),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: ElevatedButton(
                    onPressed: (() {
                      if (_firstName.text == '' ||
                          _lastName.text == '' ||
                          _email.text == '' ||
                          _helpText.text == '') return;
                      _showMyDialog();
                    }),
                    child: const Text('Submit'))),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(children: const [
                Text(
                  'Tentang Kami',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Komposisi Sheila On 7 saat ini',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
            ),
            const CardAbout(),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Thank you'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Hallo, ${_firstName.text} ${_lastName.text}'),
                Text(_email.text),
                Text(_helpText.text),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class CardAbout extends StatelessWidget {
  const CardAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                    child: CardWidget(
                  imgUrl:
                      'https://cdn0-production-images-kly.akamaized.net/-3E9-DBmqF_OFzfBGp0J6oKaR_4=/1200x1200/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1816904/original/030620300_1514688916-1.jpg',
                  nama: 'Duta SO7',
                  desc: 'Duta adalah vokalis dari band Sheila on 7',
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CardWidget(
                  imgUrl:
                      'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/09/20/1789765097.jpg',
                  nama: 'Eross Candra',
                  desc:
                      'Eross adalah seorang gitaris dengan telecaster andalannya',
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                    child: CardWidget(
                  imgUrl:
                      'https://media.suara.com/pictures/653x366/2022/07/20/82135-profil-bounty-ramdhan-instagramatbountyramdhan.jpg',
                  nama: 'Bounty Ramadan',
                  desc: 'Bounty adalah drummer additional di SO7',
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CardWidget(
                  imgUrl:
                      'https://awsimages.detik.net.id/customthumb/2012/04/26/230/adamdlm.jpg?w=700&q=90',
                  nama: 'Adam SO7',
                  desc: 'Adam adalah seorang pemain bass dari band SO7 ',
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
