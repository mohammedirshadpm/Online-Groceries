import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled8/Screen11.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

List<String> img = [
  "assets/b8.png",
  "assets/b9.png",
  "assets/b10.png",
  "assets/b11.png",
  "assets/b12.png",
  "assets/b13.png",
];

List<String> text = [
  "Frash Fruits\n& Vegetable",
  "Cooking Oil\n& Ghee",
  "Meat & Fish",
  "Bakery & Snacks",
  "Dairy & Eggs",
  "Beverages",
];
List<Color> a = [
  Color(0xff1953b175),
  Color(0xff19f8a44c),
  Color(0xff3ff7a593),
  Color(0xff3fd3b0e0),
  Color(0xff3ffde598),
  Color(0xff3fb7dff5),
];
List<Color> b = [
  Colors.green,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.yellow,
  Colors.blue,
];

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    double itemHeight = 189.10609436035156;
    double itemWidth = 174.5;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
              padding: EdgeInsets.only(left: 25.w, right: 24.h),
              child: Container(
                width: 364.w,
                height: 51.56840133666992.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xfff1f2f2)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 5.h),
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: EdgeInsets.only(left: 9.w),
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
                padding: EdgeInsets.only(left: 25.w),
                child: SizedBox(
                  height: 370,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight),
                    shrinkWrap: true,
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 15.h, right: 24.w),
                        child: GestureDetector(
                          onTap: () {
                            if (index == 5) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => Screen11()));
                            }
                          },
                          child: Container(
                            width: 174.5.w,
                            height: 189.10609436035156.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: b[index]),
                                borderRadius: BorderRadius.circular(18),
                                color: a[index]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 27,
                                ),
                                Image.asset(
                                  img[index],
                                  width: 111.37899017333984.w,
                                  height: 74.90237426757812.h,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(text[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff181725))),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
