import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utilities/constants.dart';
import 'package:portfolio/widgets/project_card.dart';

import 'utilities/helpers.dart';
import 'widgets/programming_language_card.dart';

void main() {
  runApp(
    Portfolio(),
  );
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'FiraCode',
        primaryColor: kBlueColor,
        accentColor: kBlueColor,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Render the header component
  Widget _renderHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          // Used for padding at the top and stretching the column to fit the entire width.
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
          ),
          Image.asset(
            'assets/images/profile-blue.png',
            height: 250,
          ),
          const SizedBox(height: 24.0),
          // const Text(
          //   "Hello World, I'm Mohamed 👋",
          //   style: kGreetingStyle,
          //   textAlign: TextAlign.center,
          // ),
          AnimatedTextKit(
            totalRepeatCount: 1,
            animatedTexts: [
              TyperAnimatedText(
                "Hello World, I'm Mohamed 👋",
                speed: const Duration(milliseconds: 60),
                textStyle: kGreetingStyle,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 800.0,
            ),
            child: const Text(
              "A software engineer passionate about building web and mobile applications",
              style: kHeadlineStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderBadges() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      constraints: const BoxConstraints(
        maxWidth: 800,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          'typescript',
          'javascript',
          'react',
          'react_native',
          'flutter',
          'dart',
          'polymer',
          'java',
          'swift',
          'python',
          'ruby',
          'php',
          'graphql',
          'mongo',
          'firebase',
          'google_cloud',
        ].map((language) {
          return ProgrammingLanguageCard(
            language: language,
            logo: 'assets/badges/$language.png',
          );
        }).toList(),
      ),
    );
  }

  Widget _renderProjects() {
    return Container(
      width: double.infinity,
      color: kLightGrey,
      padding: const EdgeInsets.symmetric(vertical: 52.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
              'Projects',
              style: kSectionTitleStyle,
            ),
          ),
          const SizedBox(height: 32.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            constraints: const BoxConstraints(
              maxWidth: 1600,
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 16,
              children: const [
                ProjectCard(
                  imageUrl: "assets/projects/small/pokedex.png",
                  title: 'Pokedex',
                  description: 'Pokemon explorer built with Flutter',
                  visitLink: "https://pokedexweb.surge.sh",
                  tags: ['flutter', 'dart'],
                ),
                ProjectCard(
                  imageUrl: "assets/projects/small/cryptospace.png",
                  title: 'CryptoSpace',
                  description: 'Cryptocurrency Tracker',
                  visitLink: "https://cryptospace.surge.sh",
                  tags: ['flutter', 'dart'],
                ),
                ProjectCard(
                  imageUrl: "assets/projects/small/notable.png",
                  title: 'Notable',
                  description: 'Note-taking made simple',
                  tags: ['flutter', 'dart', 'hive'],
                ),
                ProjectCard(
                  imageUrl: "assets/projects/small/chatly.png",
                  title: 'Chatly',
                  description: 'Real-time chat',
                  visitLink: "https://chatly.surge.sh/",
                  tags: ['flutter', 'dart', 'firebase'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderLinks() {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: kIsWeb ? 600 : 300.0,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 8.0,
        spacing: 24.0,
        children: [
          IconButton(
            onPressed: () => openUrl("https://calendly.com/msibrahim"),
            icon: const FaIcon(
              FontAwesomeIcons.calendarAlt,
              color: kBlueColor,
            ),
          ),
          IconButton(
            onPressed: () =>
                openUrl("https://www.linkedin.com/in/mohamed-ibrahim42/"),
            icon: const FaIcon(
              FontAwesomeIcons.linkedin,
              color: kBlueColor,
            ),
          ),
          IconButton(
            onPressed: () => openUrl("https://github.com/mibrah42"),
            icon: const FaIcon(
              FontAwesomeIcons.github,
              color: kBlueColor,
            ),
          ),
          IconButton(
            onPressed: () => openUrl("https://www.instagram.com/mibrah42/"),
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              color: kBlueColor,
            ),
          ),
          IconButton(
            onPressed: () => openUrl(
                "https://www.facebook.com/profile.php?id=100017672828391"),
            icon: const FaIcon(
              FontAwesomeIcons.facebook,
              color: kBlueColor,
            ),
          ),
          IconButton(
            onPressed: () => openUrl("https://twitter.com/mibrah42"),
            icon: const FaIcon(
              FontAwesomeIcons.twitter,
              color: kBlueColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderFooter() {
    return Container(
      color: kBlackColor,
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: const [
          Flexible(
            child: Text(
              'Made with ❤️ by Mohamed Ibrahim',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mohamed Ibrahim',
          style: TextStyle(
            color: kDarkGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _renderHeader(context),
              const SizedBox(height: 24.0),
              _renderLinks(),
              const SizedBox(height: 24.0),
              _renderBadges(),
              const SizedBox(height: 56),
              _renderProjects(),
              _renderFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
