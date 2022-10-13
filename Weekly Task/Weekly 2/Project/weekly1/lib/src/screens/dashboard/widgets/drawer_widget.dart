import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgAvatar.jpg'),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              accountName: Text('IqbalNova'),
              accountEmail: Text('iqbal.gmail.com')),
          ListTile(
            title: const Text('About us'),
            leading: const Icon(Icons.card_membership),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Contact us'),
            leading: const Icon(Icons.mail),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Agenda'),
            leading: const Icon(Icons.calendar_month),
            onTap: () {},
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
            onTap: () {},
          ),
          ListTile(
            title: const Text('FAQs'),
            leading: const Icon(Icons.help),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
