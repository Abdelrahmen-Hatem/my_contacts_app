import 'package:flutter/material.dart';
import 'package:my_contact_app/provider.dart';
import 'package:provider/provider.dart';
import 'my_contacts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => myProvider(),
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: MyContacts(),
      
      ),
    );
  }
}
