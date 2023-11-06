import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 56,
          ),
          Center(
            child: Text("Find Products",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 24),
            child: Container(
              width: 364,
              height: 51.56840133666992,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xfff1f2f2)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: "Search Store",
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
                width: 174.5,
                height: 189.10609436035156,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0x1953b175))),
          )
        ],
      ),
    );
  }
}
