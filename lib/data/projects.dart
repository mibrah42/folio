import 'package:portfolio/models/project.dart';

List<Project> projects = [
  Project(
    imageUrl: "assets/projects/small/pokedex.png",
    title: 'Pokedex',
    description: 'Pokemon explorer built with Flutter',
    visitLink: "https://pokedexweb.surge.sh",
    tags: ['flutter', 'dart'],
    github: "https://github.com/mibrah42/pokedex",
  ),
  Project(
    imageUrl: "assets/projects/small/cryptospace.png",
    title: 'CryptoSpace',
    description: 'Cryptocurrency Tracker',
    visitLink: "https://cryptospace.surge.sh",
    tags: ['flutter', 'dart'],
    github: "https://github.com/mibrah42/cryptospace",
  ),
  Project(
    imageUrl: "assets/projects/small/notable.png",
    title: 'Notable',
    description: 'Note-taking made simple',
    visitLink: "https://notable.surge.sh/",
    tags: ['flutter', 'dart', 'hive'],
    github: "https://github.com/mibrah42/notable",
  ),
  Project(
    imageUrl: "assets/projects/small/chatly.png",
    title: 'Chatly',
    description: 'Real-time chat',
    visitLink: "https://chatly.surge.sh/",
    tags: ['flutter', 'dart', 'firebase'],
    github: "https://github.com/mibrah42/chatly",
  ),
];
