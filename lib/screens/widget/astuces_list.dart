import 'package:colloge_mariama_ramsar_project/screens/widget/grid_lesson.dart';
import 'package:flutter/material.dart';

class AstucesList extends StatelessWidget {
  const AstucesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [GridLesson()],
        ),
      ),
    );
  }
}
