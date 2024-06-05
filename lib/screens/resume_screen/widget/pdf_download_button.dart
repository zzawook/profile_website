import 'package:flutter/material.dart';
import 'dart:html';

class PdfDownloadButton extends StatelessWidget {
  final String pdfUrl;
  const PdfDownloadButton({
    super.key,
    required this.pdfUrl,
  });

  void onDownloadPdfPressed() {
    window.open(pdfUrl, 'new tab');
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}
