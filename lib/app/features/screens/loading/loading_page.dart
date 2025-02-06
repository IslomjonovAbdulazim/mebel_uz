import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final bool isLoading;

  const LoadingPage(this.isLoading, {super.key});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? AbsorbPointer(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: .3),
              ),
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
