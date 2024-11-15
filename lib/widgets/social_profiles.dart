import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import 'button_icon.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 15.0),
        ButtonIcon(name: 'github', url: DataValues.githubURL).returnButton(),
        const SizedBox(width: 15.0),
        ButtonIcon(name: 'linkedin', url: DataValues.linkedinURL)
            .returnButton(),
        const SizedBox(width: 15.0),
        ButtonIcon(name: 'instagram', url: DataValues.instagramURL).returnButton(),
        const SizedBox(width: 15.0),
        ButtonIcon(name: 'whatsapp', url: DataValues.whatsappURL).returnButton(),
      ],
    );
  }
}
