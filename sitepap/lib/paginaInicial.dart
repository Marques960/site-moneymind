//ignorances
// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print


//imports
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});


  @override
  State<PaginaInicial> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {


  @override
  Widget build(BuildContext context) {
    

    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      body:  Column(
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
                  width: 340,
                  height: 80,
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 120,
                          height: 100,
                          child: GestureDetector(
                            onTap: () {
                              _launchURL('https://thebillify.com/');
                            },
                            child: Image(
                              image: AssetImage(
                                "assets/images/playstore.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 180,
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Image(
                            image: AssetImage(
                              "assets/images/appstore1.png",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )

      
    );
  }

Future<void> _launchURL(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
}

}

