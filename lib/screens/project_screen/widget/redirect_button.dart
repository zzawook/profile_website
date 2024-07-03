import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RedirectButton extends StatelessWidget {
  final String githubUrl, demoUrl;

  const RedirectButton({
    super.key,
    required this.githubUrl,
    required this.demoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          child: FilledButton(
            onPressed: () async {
              await launchUrl(Uri.parse(githubUrl));
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  side: BorderSide.none,
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(Color(0xff1b1e2f)),
            ),
            child: const Text(
              "View code",
              style: TextStyle(
                color: Color(0xff9ca4ca),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 100,
          child: FilledButton(
            onPressed: () async {
              await launchUrl(Uri.parse(demoUrl));
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
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  side: BorderSide.none,
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(Color(0xff1b1e2f)),
            ),
            child: const Text(
              "Open demo",
              style: TextStyle(
                color: Color(0xff9ca4ca),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
