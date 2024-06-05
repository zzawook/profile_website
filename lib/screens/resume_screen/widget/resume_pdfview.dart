import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumePdfview extends StatelessWidget {
  final String pdfUrl;

  const ResumePdfview({
    super.key,
    required this.pdfUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1000, width: 800, child: SfPdfViewer.network(pdfUrl));
  }
}
