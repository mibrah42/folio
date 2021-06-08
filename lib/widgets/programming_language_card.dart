import 'package:flutter/material.dart';
import 'package:portfolio/utilities/constants.dart';
import 'package:portfolio/extensions/capitalize.dart';

class ProgrammingLanguageCard extends StatelessWidget {
  final String language;
  final String logo;

  const ProgrammingLanguageCard({
    Key? key,
    required this.language,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              logo,
              width: 48,
            ),
            const SizedBox(height: 4.0),
            Text(
              language.capitalize().replaceAll("_", " "),
              style: kProgrammingLanguageCardTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
