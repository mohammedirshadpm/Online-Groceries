import 'package:flutter/material.dart';
import 'Login.dart';

class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 56,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.49),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
            Image.asset(
              "assets/a7.png",
              width: 500,
              height: 155,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text("Select Your Location",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                  "Swithch on your location to stay in tune with\n            what’s happening in your area",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 89,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Your Zone",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.18),
              child: Row(
                children: [
                  Text("Banasree",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0XFF7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.3, right: 24.52),
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
              padding: const EdgeInsets.only(left: 25.18),
              child: Text("Your Area",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.86),
              child: Row(
                children: [
                  Text("Types of your area",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffB1B1B1))),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.3, right: 24.52),
              child: Container(
                width: 364,
                child: Divider(
                  color: Color(0xffE2E2E2),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.3, right: 24.52),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Login()));
                },
                child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xff53b175)),
                    child: Center(
                      child: Text("Submit",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFF9FF))),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
