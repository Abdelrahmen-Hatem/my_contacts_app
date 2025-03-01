// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class startSocialMedia extends StatelessWidget {
  String socialMediaLinks;
  
  startSocialMedia({
    Key? key,
    required this.socialMediaLinks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse(socialMediaLinks),mode: LaunchMode.externalApplication);
        } ,
             child: Text("start Social Media Here")),
      ),
    );
  }
}
