import 'package:flutter/material.dart';
import 'Screen6.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
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
              padding: const EdgeInsets.only(left: 24.79),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.78),
              child: Text("Enter your 4-digit code",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.66),
              child: Text("Code",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 26.17),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(focusedBorder: InputBorder.none,enabledBorder: InputBorder.none,disabledBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.61, right: 25.22),
              child: Container(
                width: 364,
                child: Divider(
                  color: Color(0xffE2E2E2),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.61),
              child: Row(
                children: [
                  Text("Resend Code",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff53B175))),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Screen6()));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff53B175),
                        radius: 30,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
