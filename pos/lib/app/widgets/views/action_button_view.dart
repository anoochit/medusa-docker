import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ActionButtonView extends GetView {
  const ActionButtonView({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: () => onTap(),
        icon: Icon(icon),
        label: Text(title),
      ),
    );
  }
}
