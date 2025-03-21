import 'package:flutter/material.dart';
import 'package:my_contact_app/provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatefulWidget {
  MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  
  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/abdelrhman.hatem.199',
    'whatsapp.png': 'https://wa.me/201063370030',
    'instagram.png': 'https://www.instagram.com/abdulraman.hatem/?__pwa=1',
    'telegram.png': 'https://t.me/Glliittch',
    'twitter.png': 'https://x.com/abdelravman',
    'github.png': 'https://github.com/Abdelrahmen-Hatem',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 7, 30),
        title: const Text("My Contact Screen",
            style: TextStyle(color: Colors.white)),
        leading: InkWell(
          child: const Icon(Icons.home, color: Colors.white),
          onTap: () {},
        ),
        actions: [
          Consumer<myProvider>(
            builder: (context, value, child) => 
             Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  value.myUrl == null
                      ? launchUrl(Uri.parse('tel:+201063370030'))
                      : launchUrl(value.myUrl!, mode: LaunchMode.externalApplication);
                  ;
                },
                icon: value.myPlatform == null
                    ? const Icon(Icons.phone, color: Colors.white, size: 25)
                    : Image.asset('assets/${value.myPlatform}'),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/face_swapped_image.jpg'),
                radius: 100,
              ),
              const SizedBox(height: 20),
              const Text("Abdelrahman Hatem",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const Text("Flutter developer",
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("+201063370030",
                      style: TextStyle(fontSize: 22, color: Colors.grey)),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.phone, size: 30, color: Colors.grey),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201063370030'));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GridView.builder(
                itemCount: socialMedia.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Consumer<myProvider>(
                    builder: (context, value, child) => Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/${socialMedia.keys.toList()[index]}'),
                          radius: 40,
                        ),
                        onTap: () {
                          setState(() {
                            value.myPlatform = socialMedia.keys.toList()[index];
                            value.myUrl = Uri.parse(socialMedia.values.toList()[index]);
                             
                          });
                       value.notifyListeners();
                          launchUrl(Uri.parse(socialMedia.values.toList()[index]),
                              mode: LaunchMode.externalApplication);
                        },
                      ),
                    ),
                    
                  );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
