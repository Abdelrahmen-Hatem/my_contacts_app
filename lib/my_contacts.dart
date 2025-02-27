import 'package:flutter/material.dart';
import 'package:my_contact_app/widgets/contactsGrid.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/abdelrhman.hatem.199',
    'whatsapp.png': 'https://wa.me/201063370030',
    'instagram.png': 'https://www.instagram.com/abdulraman.hatem/?__pwa=1',
    'telegram.png': 'https://t.me/Glliittch',
    'twitter.png': 'https://x.com/abdelravman',
    'github.png': 'https://github.com/Abdelrahmen-Hatem',
  };
  @override
  Widget build(BuildContext mycontext) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              CircleAvatar(
                backgroundImage: AssetImage('assets/face_swapped_image.jpg'),
                radius: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Abdelrahman Hatem",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Flutter developer",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "+201063370030",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201063370030'));
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              ContactsGrid(socialMedia: socialMedia),
            ],
          ),
        ),
      ),
    );
  }
}