import 'package:flutter/material.dart';
import 'package:my_contact_app/start.dart';
import 'my_contacts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: startSocialMedia(socialMediaLinks: 'https://github.com/Abdelrahmen-Hatem',),

    );
  }
}
