import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';
import 'package:swift/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          constraints: BoxConstraints(
            minHeight: height,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backimage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: width < 500 ? width * 0.8 : 420,
              height: 600,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 143, 143, 143),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png"),
                  const Text(
                    "Swift",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 64,
                    ),
                  ),
                  const Text(
                    "Café",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "'Latte but never late'",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "User Name",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const HomePage());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 77, 27, 42),
                            Color.fromARGB(255, 167, 116, 90),
                          ]),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const HomePage());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  )
                ],
              ),
            ).asGlass(
              blurX: 10,
              blurY: 10,
              clipBorderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
