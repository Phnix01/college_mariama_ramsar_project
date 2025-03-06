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
          children: [
            GridLesson(
              numer: "1",
              titre: "que faire quand votre est innondation",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "2",
              titre: "lutter éfficacement contre les moustiques",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "3",
              titre: "éviter les maisons en zones innondables",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "4",
              titre: "éviter les arbres quand il pleut",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "5",
              titre: "protéger les enfants contre les innondations",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "6",
              titre: "lutter éfficacement contre les moustiques",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "7",
              titre: "lutter éfficacement contre les moustiques",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "8",
              titre: "lutter éfficacement contre les moustiques",
              description: "comment se comporter en cas d'innondation",
            ),
            const SizedBox(
              height: 15,
            ),
            GridLesson(
              numer: "9",
              titre: "lutter éfficacement contre les moustiques",
              description: "comment se comporter en cas d'innondation",
            ),
          ],
        ),
      ),
    );
  }
}
