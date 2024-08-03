import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadResumeButton extends StatefulWidget {
  final void Function(Uint8List, String)? onFileSelected; // New parameter

  const UploadResumeButton({super.key, this.onFileSelected});

  @override
  _UploadResumeButtonState createState() => _UploadResumeButtonState();
}

class _UploadResumeButtonState extends State<UploadResumeButton> {

  Future<void> _selectFile() async {
    FilePickerResult? result = await FilePickerWeb.platform.pickFiles(
      // allowedExtensions: List.of(<String>['pdf']),
      allowMultiple: false,
    );

    if (result!.files.isNotEmpty) {
      setState(() {
        try {
          Uint8List? fileBytes = result.files.first.bytes;
          String fileName = result.files.first.name;
          if (widget.onFileSelected != null) {
            widget.onFileSelected!(fileBytes!, fileName);
          }
        } catch (e) {
          print(e.toString());
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _selectFile,
      child: const Text('Upload Resume'),
    );
  }
}
