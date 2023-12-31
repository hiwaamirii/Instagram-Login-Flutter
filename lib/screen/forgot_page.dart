import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Login help',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find your account',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  """Enter your username or the email or phone
number linked to your account.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
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
            const SizedBox(height: 13),
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
                  'Next',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Can\'t rest your password?',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
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
                ),
              ],
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white30,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // radius
                  ),
                ),
                child: const Text(
                  'Log in with Facebook',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
