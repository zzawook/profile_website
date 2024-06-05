import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RedirectButton extends StatelessWidget {
  final String url, text;

  const RedirectButton({
    super.key,
    required this.url,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide.none,
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(Color(0xff1b1e2f)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xff9ca4ca),
        ),
      ),
    );
  }
}
