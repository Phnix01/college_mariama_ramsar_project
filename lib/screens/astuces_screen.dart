import 'package:colloge_mariama_ramsar_project/screens/widget/astuces_list.dart';
import 'package:flutter/material.dart';

class AstucesScreen extends StatefulWidget {
  const AstucesScreen({super.key});

  @override
  State<AstucesScreen> createState() => _AstucesScreenState();
}

class _AstucesScreenState extends State<AstucesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mieux gérer les risques"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: AstucesList(),
    );
  }
}
