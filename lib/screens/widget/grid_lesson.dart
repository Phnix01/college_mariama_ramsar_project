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
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
        child: FittedBox(
          child: Row(
            children: [
              Container(
                height: 80,
                width: 50,
                color: Colors.green,
                padding: EdgeInsets.all(2),
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
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(this.description,
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
