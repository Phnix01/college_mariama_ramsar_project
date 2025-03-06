import 'package:flutter/material.dart';

class grid_lesson extends StatelessWidget {
  const grid_lesson({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.fonction,
  });
  final String title;
  final String imageUrl;
  final VoidCallback fonction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fonction,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        width: 350,
        child: Stack(
          children: [
            Image.asset(imageUrl),
            Positioned(
                bottom: 0,
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
