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
      body: Center(
        child: Text("Astuces"),
      ),
    );
  }
}
