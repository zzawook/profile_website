import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenUrlButton extends StatelessWidget {
  final String url;

  const OpenUrlButton({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: FilledButton(
        onPressed: () async {
          await launchUrl(Uri.parse(url));
        },
        style: const ButtonStyle(
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide.none,
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(Color(0xff1b1e2f)),
        ),
        child: const Text(
          "Read on Medium",
          style: TextStyle(
            color: Color(0xff9ca4ca),
          ),
        ),
      ),
    );
  }
}
