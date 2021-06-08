import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/project_detail.dart';
import 'package:portfolio/utilities/constants.dart';
import 'package:portfolio/utilities/helpers.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final List<String> tags;
  final String? visitLink;
  final String? callToAction;
  final String? github;

  const ProjectCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.tags = const [],
    this.visitLink,
    this.callToAction,
    this.github,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      elevation: 2,
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          border: Border.all(
            color: kDarkGrey,
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: 350,
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: kProjectCardTitleStyle,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: tags
                    .map(
                      (technology) => Text(
                        "#$technology",
                        style: const TextStyle(
                          color: kBlueColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                bottom: 16.0,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProjectDetail(
                            title: title,
                            description: description,
                            imageUrl:
                                'assets/projects/${title.toLowerCase()}.png',
                          ),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        kBlueColor,
                      ),
                    ),
                    child: const Text('PREVIEW'),
                  ),
                  if (visitLink != null)
                    Row(
                      children: [
                        const SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () async {
                            final launchable = await canLaunch(visitLink!);
                            if (launchable) {
                              await launch(visitLink!);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              kBlueColor,
                            ),
                          ),
                          child: Text(
                            callToAction ?? 'VISIT',
                          ),
                        )
                      ],
                    ),
                  if (github != null)
                    IconButton(
                      onPressed: () => openUrl(github!),
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        color: kBlueColor,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
