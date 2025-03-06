import 'package:flutter/material.dart';

class GridLesson extends StatelessWidget {
  GridLesson(
      {super.key,
      required this.numer,
      required this.titre,
      required this.description,
      this.goToPage});
  final String numer;
  final String titre;
  final String description;
  final VoidCallback? goToPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToPage,
      child: Container(
        decoration: BoxDecoration(color: Colors.black54),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 50,
              color: Colors.green,
              padding: EdgeInsets.all(20),
              child: Text(
                numer,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.titre,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(this.description,
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
