import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget child;
  final double? maxWidth;
  const AppContainer({super.key,required this.child, this.maxWidth});

  // sm
  const AppContainer.sm({super.key,required this.child}) : maxWidth = 600;
  // md
  const AppContainer.md({super.key,required this.child}) : maxWidth = 800;
  // lg
  const AppContainer.lg({super.key,required this.child}) : maxWidth = 1000;

  @override
  Widget build(BuildContext context) {
    // dynamic on null
    double getDynamicMaxWidth() {
      if (maxWidth != null) {
        return maxWidth!;
      }
      var currentMaxWidth = MediaQuery.sizeOf(context).width;
      if (currentMaxWidth > 1000) {
        return 1000;
      }
      if (currentMaxWidth > 800) {
        return 800;
      }
      return 600;
    }
    // max width id 800
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: getDynamicMaxWidth(),
            ),
            child: child,
          ),
        );
      },
    );
  }
}