//ignorances
// ignore_for_file: file_names


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
    
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(  
      child: Column(       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
           
          ],
        ),
      ),
      
    );
  }
}
