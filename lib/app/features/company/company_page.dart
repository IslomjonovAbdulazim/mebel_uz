part of 'imports.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Image.asset(
          BrandConstants.long,
          height: 150,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
