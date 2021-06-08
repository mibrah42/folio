import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(String url) async {
  final launchable = await canLaunch(url);
  if (launchable) {
    await launch(url);
  }
}
