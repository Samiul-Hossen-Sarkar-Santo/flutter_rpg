import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledHeading("Character Name"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
            // basic info: image, description, vocation

            // weapon and ability

            //stats and slills

            // save button
            ),
      ),
    );
  }
}
