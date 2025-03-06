import 'package:flutter/material.dart';

class GridLesson extends StatelessWidget {
  const GridLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                "1",
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
                    "Que faire à une innondation",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text("Que faire à une innondation"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
