import 'package:flutter/material.dart';
import 'package:profile_website/screens/resume_screen/widget/pdf_download_button.dart';
import 'package:profile_website/screens/resume_screen/widget/resume_pdfview.dart';
import 'package:profile_website/services/api_services.dart';

class ResumeContainer extends StatefulWidget {
  const ResumeContainer({super.key});

  @override
  State<ResumeContainer> createState() => _ResumeContainerState();
}

class _ResumeContainerState extends State<ResumeContainer> {
  late String pdfUrl;
  bool isResumeDataLoaded = false;

  @override
  void initState() {
    super.initState();
    getResumeData();
  }

  void getResumeData() async {
    String url = await APIService.getResumeURL();

    if (url != "") {
      setState(() {
        isResumeDataLoaded = true;
        pdfUrl = url;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isResumeDataLoaded
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResumePdfview(
                      pdfUrl: pdfUrl,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    PdfDownloadButton(
                      pdfUrl: pdfUrl,
                    ),
                  ],
                )
              : const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
