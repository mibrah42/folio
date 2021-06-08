class Project {
  final String title;
  final String description;
  final String? visitLink;
  final String imageUrl;
  final String? github;
  final List<String> tags;

  Project({
    required this.title,
    required this.description,
    this.visitLink,
    required this.imageUrl,
    this.github,
    this.tags = const [],
  });
}
