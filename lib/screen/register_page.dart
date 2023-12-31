import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Choose username',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You can always change it later.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                  labelText: 'username',
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterPassScreen(),
                    ),
                  );
                },
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
          ],
        ),
      ),
    );
  }
}

class RegisterPassScreen extends StatefulWidget {
  const RegisterPassScreen({super.key});

  @override
  State<RegisterPassScreen> createState() => _RegisterPassScreenState();
}

class _RegisterPassScreenState extends State<RegisterPassScreen> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Create a password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'For security, your password must be 6 characters or more.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                  labelText: 'Password',
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
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text('Remember password')
                ],
              ),
            ),
            const SizedBox(height: 5),
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
          ],
        ),
      ),
    );
  }
}
