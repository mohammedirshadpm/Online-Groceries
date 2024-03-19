import 'package:flutter/material.dart';

class Screen13 extends StatefulWidget {
  const Screen13({Key? key}) : super(key: key);

  @override
  State<Screen13> createState() => _Screen13State();
}

class _Screen13State extends State<Screen13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 151,
            ),
            Center(
              child: Image.asset(
                "assets/e.png",
                width: 269,
                height: 190,
              ),
            ),
            SizedBox(
              height: 66,
            ),
            Center(
              child: Text("Your Order has been\n           accepted",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                  "Your items has been placcd and is on\n         it’s way to being processed",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xff53b175)),
                child: Center(
                  child: Text("Track Order",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text("Back to home",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
