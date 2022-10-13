import 'package:app_final_latsol/views/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../auth/auth.dart';
import 'package:flutter/material.dart';

import '../../../constants/r.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _userUid() {
    return Text(
      user?.email ?? "User Email",
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun Saya"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 28,
                bottom: 60,
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: R.colors.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(9),
                  bottomRight: Radius.circular(9),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _userUid(),
                        const Text(
                          "Nama Sekolah",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    R.assets.imgUser,
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 13,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 13,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Identitas Diri"),
                  const SizedBox(height: 15),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: R.colors.greSubtitleHome,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Nama Lengkap User",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: R.colors.greSubtitleHome,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Nama Lengkap User",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: R.colors.greSubtitleHome,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Nama Lengkap User",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: R.colors.greSubtitleHome,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Nama Lengkap User",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      color: R.colors.greSubtitleHome,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Nama Lengkap User",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 13,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).popAndPushNamed(
                    LoginPage.route,
                  );
                  signOut();
                },
                child: Row(children: const [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
