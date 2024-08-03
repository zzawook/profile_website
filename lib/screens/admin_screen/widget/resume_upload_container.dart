import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:profile_website/screens/admin_screen/widget/upload_resume_button.dart';
import 'package:profile_website/services/api_services.dart';

class ResumeUploadContainer extends StatefulWidget {
  final String? password;
  const ResumeUploadContainer({
    super.key,
    required this.password,
  });

  @override
  _ResumeUploadContainerState createState() => _ResumeUploadContainerState();
}

class _ResumeUploadContainerState extends State<ResumeUploadContainer> {
  Uint8List? selectedFile;
  String fileName = '';
  TextEditingController fileNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Row(
        children: [
          UploadResumeButton(
            onFileSelected: (file, fileName) {
              setState(() {
                selectedFile = file;
                fileNameController.text = fileName;
              });
            },
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: fileNameController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Selected File',
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              APIService.uploadResume(widget.password, selectedFile);
            },
            child: const Text('Upload'),
          ),
        ],
      ),
    );
  }
}
