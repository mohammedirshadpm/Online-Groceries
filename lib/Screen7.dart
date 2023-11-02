import 'package:flutter/material.dart';

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 77,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Image.asset(
                "assets/a8.png",
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Loging",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Enter your emails and password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Text("Email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  decoration: InputDecoration(focusedBorder: InputBorder.none,hintText: "Enter your email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 24.83),
              child: Container(
                width: 364,
                child: Divider(
                  color: Color(0xffE2E2E2),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff7C7C7C)
                  )
              ),
            ),


          ],
        ),
      ),
    );
  }
}
