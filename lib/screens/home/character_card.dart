import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Image.asset(
                'assets/img/vocations/${character.vocation.image}',
                width: 80,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledHeading(character.name),
                  StyledText(character.slogan),
                ],
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
