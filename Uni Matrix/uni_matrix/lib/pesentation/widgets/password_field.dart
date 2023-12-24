import 'package:flutter/material.dart';
import 'package:uni_matrix/pesentation/widgets/textfield_container.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passController;
  const PasswordField({super.key, required this.passController});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscurePassword = true;
  Icon visible = const Icon(Icons.visibility, color: Colors.black);
  Icon nonVisible = const Icon(Icons.visibility_off, color: Colors.black);

  Widget toggleButton() {
    return IconButton(
      icon: obscurePassword ? visible : nonVisible,
      onPressed: () {
        setState(() {
          obscurePassword = !obscurePassword;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedTextFormField(
      label: "Password",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your password";
        } else if (value.length <= 8) {
          return "Password length must be atleast 8";
        }
        return null;
      },
      controller: widget.passController,
      suffixIcon: toggleButton(),
      obscureText: obscurePassword,
    );
  }
}
