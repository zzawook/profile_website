import 'package:flutter/material.dart';
import 'package:profile_website/screens/admin_screen/widget/auth_result.dart';
import 'package:profile_website/services/api_services.dart';

class PasswordDialog extends StatefulWidget {
  final Function(bool) onAuthenticationResult;

  const PasswordDialog({super.key, required this.onAuthenticationResult});

  @override
  State<PasswordDialog> createState() => _PasswordDialogState();
}

class _PasswordDialogState extends State<PasswordDialog> {
  final APIService apiService = APIService();

  String password = '';

  @override
  void initState() {
    super.initState();
  }

  void setPassword(String value) {
    setState(() {
      password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Enter Password'),
      content: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
        ),
        onChanged: (value) {
          setPassword(value);
        },
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        TextButton(
          child: const Text('Submit'),
          onPressed: () async {
            bool isAuthenticated = await APIService.authenticateUser(password);

            AuthResult authResult = AuthResult(isAuthenticated, password);
            
            Navigator.of(context).pop(authResult);
          },
        ),
      ],
    );
  }
}
