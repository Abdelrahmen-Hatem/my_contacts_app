import 'package:flutter/widgets.dart';
import 'package:my_contact_app/widgets/Social_Media_icons.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMedia.length ,
      
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (mycontext, index) {
       
          return SocialMediaIcon(SocialMedia: socialMedia.keys.toList()[index],socialMediaLinks: socialMedia.values.toList()[index]);
        
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(20),
    );
  }
}
