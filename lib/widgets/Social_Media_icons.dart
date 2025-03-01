import 'package:flutter/material.dart';
import 'package:my_contact_app/start.dart';

// ignore: must_be_immutable
class SocialMediaIcon extends StatelessWidget {
  String SocialMedia;
  String socialMediaLinks;

  SocialMediaIcon({
    super.key,
    required this.SocialMedia,
    required this.socialMediaLinks,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/$SocialMedia'),
          radius: 40,
        ),
        onTap:() {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => startSocialMedia(socialMediaLinks: socialMediaLinks,)),
  );
        } ,
      ),
    );
  }
}
