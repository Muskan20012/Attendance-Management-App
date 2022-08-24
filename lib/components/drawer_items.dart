import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.deepPurple[700],
      padding: const EdgeInsets.only(top: 10),
      child: SafeArea(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "User Name",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Support"),
                  ),
                  SizedBox(
                    height: 1,
                    child: Container(
                      color: Colors.black.withOpacity(0.1),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.support_agent),
                    title: Text("Support policy"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.text_snippet),
                    title: Text("Privacy policy"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.task),
                    title: Text("Terms & Conditions"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
