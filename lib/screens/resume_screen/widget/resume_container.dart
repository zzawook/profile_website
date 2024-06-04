import 'package:flutter/material.dart';
import 'package:profile_website/screens/resume_screen/widget/resume_webview.dart';

import 'dart:html' as html;

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({super.key});

  final String fallbackPdfUrl =
      'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf';

  void onDownloadPdfPressed() {
    html.window.open(fallbackPdfUrl, 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResumeWebview(
                pdfUrl: fallbackPdfUrl,
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: onDownloadPdfPressed,
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xff395293)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: const Text(
                  "Download PDF of Resume",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
