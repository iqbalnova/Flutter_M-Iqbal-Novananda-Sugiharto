import 'package:flutter/material.dart';
import 'package:weekly1/src/screens/widgets/banner_widget.dart';
import 'package:weekly1/src/screens/widgets/contact_widget.dart';

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
      appBar: AppBar(
        title: Image.network(
          'https://www.sheilaon7.com/wp-content/uploads/2016/04/1x507Orange_0d707fec304ae621ce7d923a6a836576.png',
          width: 80,
          height: 40,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(child: Text('Home')),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(child: Text('About us')),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(child: Text('Faqs')),
            ),
          ),
        ],
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
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: ElevatedButton(
                    onPressed: (() {
                      if (_firstName.text == '' ||
                          _lastName.text == '' ||
                          _email.text == '' ||
                          _helpText.text == '') return;
                      _showMyDialog();
                    }),
                    child: const Text('Submit')))
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
