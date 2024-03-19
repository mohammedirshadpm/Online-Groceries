import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 30),
            child: Stack(
              children: [
                Image.asset(
                  "assets/a2.png",
                  width: 980,
                  height: 300,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 230.w, top: 14.5.h),
                  child: Image.asset(
                    "assets/a3.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 24.53),
            child: Text("Get your groceries\nwith nectar",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff030303))),
          ),
          SizedBox(
            height: 31,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 24.53),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Screen4()));
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/a4.png",
                    width: 33.96815490722656,
                    height: 23.696962356567383,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          hintText: '+880'
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.55,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 24.53, right: 25.3),
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
            padding:  EdgeInsets.only(left: 100),
            child: Text("Or connect with social media",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff828282))),
          ),
          SizedBox(
            height: 37,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 24.53, right: 25.3),
            child: Container(
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff5383ec)),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 35),
                    child: Image.asset(
                      "assets/a5.png",
                      width: 25.96815490722656,
                      height: 25.696962356567383,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Continue with Google",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFCFCFC))),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.53, right: 25.3),
            child: Container(
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff4a66ac)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset(
                      "assets/a6.png",
                      width: 25.96815490722656,
                      height: 25.696962356567383,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Continue with Facebook",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFCFCFC))),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
