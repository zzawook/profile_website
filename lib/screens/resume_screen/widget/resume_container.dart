import 'package:flutter/material.dart';
import 'package:profile_website/screens/resume_screen/widget/pdf_download_button.dart';
import 'package:profile_website/screens/resume_screen/widget/resume_pdfview.dart';

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({super.key});

  final String fallbackPdfUrl =
      'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf';

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
              ResumePdfview(
                pdfUrl: fallbackPdfUrl,
              ),
              const SizedBox(
                height: 15,
              ),
              PdfDownloadButton(
                pdfUrl: fallbackPdfUrl,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


