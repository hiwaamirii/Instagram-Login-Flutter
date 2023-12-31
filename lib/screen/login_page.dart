import 'package:flutter/material.dart';
import 'package:instagram_login/screen/forgot_page.dart';
import 'package:instagram_login/screen/register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // language selector button
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'English (United States)',
              style: TextStyle(
                color: Color(0xffC5C5C5),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 5),
            Image.asset('assets/images/downicon.png')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // instagram logo
            const Padding(
              padding: EdgeInsets.only(top: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Insta',
                      fontSize: 65,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // first text field for login
            const SizedBox(
              width: 330,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffC5C5C5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  labelText: 'phone number,username, or email',
                  labelStyle: TextStyle(
                    color: Color(
                      0xffC5C5C5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // second text field for login
            SizedBox(
              width: 330,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xffC5C5C5),
                  focusColor: const Color(0xffC5C5C5),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  labelText: 'password',
                  labelStyle: const TextStyle(
                    color: Color(
                      0xffC5C5C5,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xffC5C5C5),
                    ),
                    // hide/show password
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ),
                obscureText: passwordVisible,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            const SizedBox(height: 15),
            // log in button
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 16, 132, 227),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // radius
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // forgot password >> page
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ForgotScreen(),
                    ));
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Forgot your login details?',
                          style: TextStyle(
                            color: Color(0xFFAEA9A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                        TextSpan(
                          text: 'Get help logging in.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 32, 68),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            // Diveder
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFC5C5C5),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFCCCCCC),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'OR',
                  style: TextStyle(
                    color: Color(0x7F0E0E0E),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 150,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFCCCCCC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFC5C5C5),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            // facebook login button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  scale: 1.30,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Log in with Facebook',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // sing up >> page
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: TextStyle(
                        color: Color(0xFFAEA9A9),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 32, 68),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
