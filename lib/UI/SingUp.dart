import 'package:flutter/material.dart';
import 'Screen9.dart';
import 'bottom navigation.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 89,
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
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Sign Up",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff030303))),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Enter your credentials to continue",
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
              child: Text("Username",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 161,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      hintText: "Enter user name",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
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
              child: Text("Email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 20),
                        child: Icon(
                          Icons.done,
                          color: Color(0xff53B175),
                        ),
                      ),
                      focusedBorder: InputBorder.none,
                      hintText: "Enter Your email",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
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
              child: Text("Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C))),
            ),
            SizedBox(
              width: 500,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.88),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      suffix: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 20),
                        child: Image.asset(
                          "assets/a9.png",
                          width: 19.934654235839844,
                          height: 18.920053482055664,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      hintText: "Enter your password",
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none),
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Row(
                children: [
                  Text("By continuing you agree to our",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7C7C))),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text("Terms of Service",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff53B175))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.88),
              child: Row(
                children: [
                  Text("and",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7C7C7C))),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text("Privacy Policy.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff53B175))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 24.83),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => BottomNavigation()));
                },
                child: Container(
                    width: 364,
                    height: 67,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xff53b175)),
                    child: Center(
                      child: Text("Sing Up",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 76),
              child: Row(
                children: [
                  Text("Already have an account?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff030303))),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text("Singup",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff53B175))),
                  )
                ],
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
