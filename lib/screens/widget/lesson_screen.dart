import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen(
      {super.key,
      required this.title,
      this.imageUrl,
      required this.lessonText});
  final String title;
  final String? imageUrl;
  final String lessonText;
  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Colors.blue,
        //         Colors.purple,
        //       ],
        //     ),
        //   ),
        // ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
          child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (widget.imageUrl != null)
                Image.network(
                  widget.imageUrl!,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.lessonText,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
