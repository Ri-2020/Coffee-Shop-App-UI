import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:glass/glass.dart';
import 'package:swift/instant.dart';
import 'package:swift/nav_button.dart';
import 'package:swift/popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  String action = "Home";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<NavBtn> navBtns = [
      NavBtn(img: "assets/images/home.png", selected: true),
      NavBtn(img: "assets/images/profile.png", selected: false),
      NavBtn(img: "assets/images/folder.png", selected: false),
      NavBtn(img: "assets/images/delete.png", selected: false),
      NavBtn(img: "assets/images/chat.png", selected: false),
    ];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backimage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: width,
                      child: SafeArea(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "👋",
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "20/12/23",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                        Text(
                                          "Joshua Scanlan",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.white60,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket_rounded,
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "assets/images/backimage.png"),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search Favourate Beaverages",
                                  prefixIcon: const Icon(
                                    Icons.search,
                                  ),
                                  suffixIcon: const Icon(Icons.tune_rounded),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  focusColor: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).asGlass(),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        "Most Popular Beverages",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 265,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (conext, i) {
                          return const PopularBeverages(
                              image: "assets/images/coffee1.png");
                        },
                        itemCount: 3,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: width,
                            child: const Text(
                              "Get it instantly",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            height: 230 * 3,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (conext, i) {
                                return const GetItInstant(
                                  image: "assets/images/cup.png",
                                );
                              },
                              itemCount: 3,
                            ),
                          ),
                        ],
                      ),
                    ).asGlass(),
                  ],
                ),
              ).asGlass(),
            ),
          ),
          Positioned(
            bottom: 20,
            width: width,
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xff333333).withOpacity(0.84),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...navBtns.map((e) {
                        return InkWell(
                            onTap: () {
                              print(e.img);
                              navBtns.forEach((element) {
                                element.selected = false;
                              });
                              e.selected = true;
                              setState(() {});
                            },
                            child: e.selected
                                ? NavButtom(
                                    img: e.img,
                                    selected: e.selected,
                                  )
                                : SizedBox(
                                    child: Image.asset(e.img,
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.cover),
                                  ));
                      }).toList(),
                      SizedBox(width: 5),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
