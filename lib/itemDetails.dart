import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      // padding: const EdgeInsets.only(bottom: 30),
      // height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backimage.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: width < 400 ? height + 500 : height + 300,
              // height: double.minPositive,
            ),
            Image.asset(
              "assets/images/cup.png",
              height: height * 0.4,
              width: width,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: height * 0.38,
              child: Container(
                width: width - 40,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Latté",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "4.9 ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ⭐ ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " (458)",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Image.asset("assets/images/veg.png",
                                    width: 15, height: 15),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3),
                                  bottomLeft: Radius.circular(3),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(3),
                                  bottomRight: Radius.circular(3),
                                ),
                              ),
                              child: const Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w200,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Choice of cup filling",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Choice(
                          title: "Full",
                          isSelected: true,
                          width: width,
                        ),
                        Choice(
                          title: "1/2 Full",
                          width: width,
                        ),
                        Choice(
                          title: "3/4 Full",
                          width: width,
                        ),
                        Choice(
                          title: "1/4 Full",
                          width: width,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Choice of milk",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "Skim Milk",
                          isSelected: true,
                          screenWidth: width,
                        ),
                        Option(
                          milk: "Full Cream Milk",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "Almond Milk",
                          screenWidth: width,
                        ),
                        Option(
                          milk: "Full Cream Milk",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "Soy Milk",
                          screenWidth: width,
                        ),
                        Option(
                          milk: "Oat Milk",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "Lactose free Milk",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Choice of Sugar",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "Sugar X1",
                          screenWidth: width,
                        ),
                        Option(
                          milk: "Sugar X2",
                          isSelected: true,
                          screenWidth: width,
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Option(
                          milk: "1/2 Sugar",
                          screenWidth: width,
                        ),
                        Option(
                          milk: "No Sugar",
                          screenWidth: width,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                          horizontal: width < 400 ? 5 : 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "High Priority ",
                                style: TextStyle(
                                  fontSize: width < 400 ? 10 : 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent,
                                ),
                                child: Text("!"),
                              )
                            ],
                          ),
                          Container(
                            width: width < 400 ? 70 : 100,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Submit",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: width < 400 ? 10 : null,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ).asGlass(
                clipBorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Choice extends StatelessWidget {
  final String title;
  final bool isSelected;
  final double width;
  const Choice(
      {super.key,
      required this.title,
      this.isSelected = false,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: width < 350 ? 5 : 15, vertical: 5),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: width < 400
                ? width < 350
                    ? 10
                    : 12
                : 15,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  final String milk;
  final bool isSelected;
  final double screenWidth;
  const Option(
      {super.key,
      required this.milk,
      this.isSelected = false,
      required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth < 400 ? null : Get.width * 0.40,
      child: Row(
        children: [
          Switch(value: isSelected, onChanged: (val) {}),
          const SizedBox(
            width: 5,
          ),
          Text(
            milk,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
