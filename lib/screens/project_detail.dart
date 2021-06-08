import 'package:flutter/material.dart';
import 'package:portfolio/utilities/constants.dart';

class ProjectDetail extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectDetail({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kDarkGrey),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              constraints: const BoxConstraints(
                maxHeight: 500,
              ),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kHeadlineStyle,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
