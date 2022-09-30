import '../constants/r.dart';
import '../views/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String route = "login_screen";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF3F7F8),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 25,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  R.strings.login,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                R.assets.imgLogin,
                height: 275,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                R.strings.welcome,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                R.strings.loginDesc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: R.colors.graySubtitle,
                ),
              ),
              Text(
                R.strings.loginDesc2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: R.colors.graySubtitle,
                ),
              ),
              const Spacer(),
              ButtonLogin(
                onTap: () {
                  Navigator.of(context).pushNamed(RegisterPage.route);
                },
                backgroundColor: Colors.white,
                borderColor: R.colors.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(R.assets.icGoogle),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      R.strings.loginWithGoogle,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: R.colors.blackLogin,
                      ),
                    ),
                  ],
                ),
              ),
              ButtonLogin(
                onTap: () {},
                backgroundColor: Colors.black,
                borderColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(R.assets.icApple),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      R.strings.loginWithApple,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.backgroundColor,
    required this.child,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final Widget child;
  final Color borderColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          elevation: 0,
          fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(color: borderColor),
          ),
        ),
        onPressed: onTap,
        child: child,
      ),
    );
  }
}
