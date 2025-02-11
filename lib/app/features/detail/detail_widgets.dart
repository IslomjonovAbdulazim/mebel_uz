part of 'imports.dart';

class __Item extends StatelessWidget {
  final String title;
  final String body;

  const __Item({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: context.body,
          textAlign: TextAlign.center,
        ),
        Text(
          body,
          style: context.title,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
