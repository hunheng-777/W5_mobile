import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType buttonType;
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.buttonType = ButtonType.primary,
  });

  Color getButtonColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;

      case ButtonType.secondary:
        return Colors.green;

      case ButtonType.disabled:
        return Colors.grey;
    }
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            
            children: [
              CustomButton(label: 'Primary', icon: Icons.account_circle),
              CustomButton(
                label: 'Secondary',
                icon: Icons.verified,
                buttonType: ButtonType.secondary,
              ),
              CustomButton(
                label: 'Disabled',
                icon: Icons.lock,
                buttonType: ButtonType.disabled,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
