//ignorances
// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors


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
