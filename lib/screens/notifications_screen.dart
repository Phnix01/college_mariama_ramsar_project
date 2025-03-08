import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert-infos"),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.thunderstorm),
                title: Text("Alert Orage violent"),
                subtitle: Text("Zone de Niamey à 20 h"),
                trailing: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                tileColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 13,
              ),
              ListTile(
                leading: Icon(Icons.air_outlined),
                title: Text("Alerte vents violents"),
                subtitle: Text("Zone de Niamey - il y a 2 jours"),
                trailing: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                tileColor: Colors.orange.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
