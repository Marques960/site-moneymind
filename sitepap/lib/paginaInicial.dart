//ignorances
// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, unused_element, unnecessary_new, duplicate_import

//imports
import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (_currentPage < 4) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    "MoneyMind",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Improving Your\nGestion",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Text(
                      "Take control of your bills with MoneyMind Financial Gestion App.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "Don't let payments disrupt your life.\nSimplify bill management today!",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 80,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              //baixar arquivo
                              downloadFile("moneymind.apk");
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color.fromARGB(255, 9, 50, 84),
                              ),
                              child: Center(
                                child: Text(
                                  "Download Apk",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                  ),
                                ),
                              ),
                            ),
                            
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "(Only for Android devices)",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            //transições imagens de apresentação
            Container(
              width: 330.0,
              height: 600.0,
              child: PageView(
                controller: _pageController,
                children: [
                  Image(image: AssetImage("web/assets/mockups/01.png")),
                  Image(image: AssetImage("web/assets/mockups/02.png")),
                  Image(image: AssetImage("web/assets/mockups/03.png")),
                  Image(image: AssetImage("web/assets/mockups/04.png")),
                  Image(image: AssetImage("web/assets/mockups/05.png")),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //footer
            Container(
              width: double.maxFinite,
              height: 80,
              color: Color.fromARGB(255, 13, 75, 163),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  
                    child: Image(
                      image: AssetImage(
                        "web/assets/images/logo.png",
                      ),
                    ),
                  
                  ),
                  Expanded(
                    flex:
                        3,
                    child: Container(
                      height: 80,
                      color: Colors.transparent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Copyright 2024 MoneyMind",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "All rights reserved",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "By Rafael Marques",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


downloadFile(url) {
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download = "moneymind.apk";
  anchorElement.click();
}

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
