//ignorances
// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import


//imports
import 'package:flutter/material.dart';

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
      body: Center(  
      child: Column(       
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'You have pushed the button this: ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 20),
            Container(
              width: 200.0,
              height: 200.0,
              child: Image(
                image: AssetImage(
                  "assets/images/logo.png",
                ), 
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}