import 'package:bookly/core/utils/functions/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(
  BuildContext context, {
  required String? uri,
}) async {
  if (uri != null) {
    final Uri url = Uri.parse(uri);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      errorSnackBar(context, 'Cannot launch $uri');
    }
  }
}
