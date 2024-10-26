import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  //handling vocation selection
  Vocation selectedVocation = Vocation.junkie;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const StyledHeading("Ooops!!!"),
            content: const StyledText("Add the character name ^.^"),
            actions: [
              StyledButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: StyledHeading("Close"),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center,
          );
        },
      );
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const StyledHeading("Ooops!!!"),
            content: const StyledText("Add the Slogan ^.^"),
            actions: [
              StyledButton(
                onPressed: () {
                  Navigator.pop(ctx);
                },
                child: StyledHeading("Close"),
              ),
            ],
            actionsAlignment: MainAxisAlignment.center,
          );
        },
      );
      return;
    }
    characters.add(
      Character(
        name: _nameController.text.trim(),
        slogan: _sloganController.text.trim(),
        vocation: selectedVocation,
        id: uuid.v4(),
      ),
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => const Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Your Characters"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              //welcome message
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.code,
                      color: Appcolors.primaryColor,
                    ),
                    const StyledHeading("Welcome, new player!"),
                    const StyledText(
                        "Create a name and slogan for your character"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Input for name and slogan
              TextField(
                controller: _nameController,
                cursorColor: Appcolors.textColor,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText("Character Name"),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              TextField(
                controller: _sloganController,
                cursorColor: Appcolors.textColor,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText("Character slogan"),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //Vocation msg
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.code,
                      color: Appcolors.primaryColor,
                    ),
                    const StyledHeading("Choose your vocation"),
                    const StyledText("This determines your available skills."),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Vocation cards
              VocationCard(
                selected: selectedVocation == Vocation.junkie,
                onTap: updateVocation,
                vocation: Vocation.junkie,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.ninja,
                onTap: updateVocation,
                vocation: Vocation.ninja,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.raider,
                onTap: updateVocation,
                vocation: Vocation.raider,
              ),
              VocationCard(
                selected: selectedVocation == Vocation.wizard,
                onTap: updateVocation,
                vocation: Vocation.wizard,
              ),
              const SizedBox(
                height: 30,
              ),

              //end msg

              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.code,
                      color: Appcolors.primaryColor,
                    ),
                    const StyledHeading("Good luck!!!"),
                    const StyledText("And enjoy the journey..."),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Center(
                child: StyledButton(
                  onPressed: handleSubmit,
                  child: const StyledHeading("Create Character"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
