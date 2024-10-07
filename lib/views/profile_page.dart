import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        backgroundColor: Colors.white,
        width: double.infinity,
        shape: const RoundedRectangleBorder(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 10),
                  width: 130,
                  height: 130,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjzvhd3LuDSy1zBkXmFzhlfiMAIUF8Qja2dg&s",
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90, left: 90),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mode_edit_rounded,
                          size: 16,
                        ),
                        style: IconButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          minimumSize: const Size(30, 30),
                          backgroundColor: const Color(0xfffb9707),
                          fixedSize: const Size(20, 20),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Ammar Ahmad',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'ammar@gmail.com',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff353636)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person_outline_rounded,
                      size: 28,
                    ),
                    title: Text(
                      'Edit Profile',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.visibility_off_outlined,
                      size: 28,
                    ),
                    title: Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_outlined,
                      size: 28,
                    ),
                    title: Text(
                      'Setting',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_outlined,
                      size: 28,
                      color: Color(0xffeaad4e),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          color: Color(0xffeaad4e),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
