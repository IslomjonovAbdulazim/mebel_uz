import 'package:flutter/material.dart';
import 'package:wordly_project/utils/extenstions/color_extension.dart';

class LoadingPage extends StatelessWidget {
  final bool isLoading;

  const LoadingPage(this.isLoading, {super.key});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? AbsorbPointer(
            child: Container(
              decoration: BoxDecoration(
                color: context.primary.withValues(alpha: .1),
              ),
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
