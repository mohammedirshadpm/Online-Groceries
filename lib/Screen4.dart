import 'package:flutter/material.dart';
import './Screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
                padding: const EdgeInsets.only(left: 25.25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff181725),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.25),
                child: Text("Enter your mobile number",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.95),
                child: Text("Mobile Number",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.07),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/a4.png",
                      width: 33.96815490722656,
                      height: 23.696962356567383,
                    ),
                    SizedBox(
                      width: 80,
                      height: 29,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.02),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              focusedBorder:InputBorder.none,enabledBorder: InputBorder.none,disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.55,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.07, right: 24.76),
                child: Container(
                  width: 364,
                  child: Divider(
                    color: Color(0xffE2E2E2),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Screen5()));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
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
        ));
  }
}
