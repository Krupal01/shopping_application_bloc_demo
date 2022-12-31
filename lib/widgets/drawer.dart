import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "User Name",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("user@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "U",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Home '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text(' My Order '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' Log out '),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
