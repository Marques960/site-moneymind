// ignore_for_file: prefer_const_constructors, camel_case_types
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file:


//imports
import 'package:flutter/material.dart';
import 'package:sitepap/paginaInicial.dart';

void main() {
  runApp(const Site());
}

class variaveisGlobais {
  String ip = "192.168.1.76<:80";
}
class Site extends StatelessWidget {
  const Site({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'moneymind.pt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PaginaInicial(),
    );
  }
}

