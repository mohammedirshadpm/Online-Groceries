import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Login.dart';
import 'Screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/a1.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 320,
              ),
              Image.asset(
                "assets/a.png",
                width: 48,
                height: 56,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              Text("to our store",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              Text("Ger your groceries in as fast as one hour",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Login()));
                },
                child: Padding(
                  padding:  EdgeInsets.only(right: 8.w,top: 120.h),
                  child: Container(
                      width: 353,
                      height: 67,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: Color(0xff53b175)),
                      child: Center(
                        child: Text("Get Started",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
