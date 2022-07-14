import 'package:chat/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Controller {
  Future<bool> onDownload() async {
    final url = Uri.parse(AppText.downloadLink);

    final isLaunched = await launchUrl(url);

    return isLaunched;
  }
}
