import 'package:flutter/material.dart';

Widget buildDrawer(
  BuildContext context,
) {
  return ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.orange),
        child: Column(
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Demo User',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      ListTile(
        title: const Text('Page 1'),
        leading: const Icon(Icons.check_circle),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      const Divider(
        height: 1,
        thickness: 1,
      ),
      ListTile(
        title: const Text('Help'),
        leading: const Icon(Icons.help),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('About'),
        leading: const Icon(Icons.info),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        title: const Text('Logout'),
        leading: const Icon(Icons.logout),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
}
