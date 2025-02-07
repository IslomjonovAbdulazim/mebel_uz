import 'package:flutter/material.dart';
import 'package:wordly_project/utils/extenstions/color_extension.dart';

class LoadingPage extends StatelessWidget {
  final bool isLoading;
  final bool colorNeeded;

  const LoadingPage(
    this.isLoading, {
    super.key,
    this.colorNeeded = true,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? AbsorbPointer(
            child: Container(
              decoration: BoxDecoration(
                color:
                    colorNeeded ? context.primary.withValues(alpha: .1) : null,
              ),
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
