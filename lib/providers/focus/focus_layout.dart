import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'focus_provider.dart';

class FocusLayout extends StatelessWidget {
  final Widget child;

  const FocusLayout({@required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Provider.of<FocusProvider>(
        context,
        listen: false,
      ).updateFocus,
      child: child,
    );
  }
}
