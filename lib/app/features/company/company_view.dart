part of 'imports.dart';

class _SocialAccounts extends StatelessWidget {
  const _SocialAccounts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Ijtimoiy tarmoqlar",
          style: context.display,
        ),
        SizedBox(height: 10),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final url = "https://instagram.com/cristiano";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                IconConstants.instagram,
                height: 35,
              ),
              SizedBox(width: 10),
              Text(
                "Instagram",
                style: context.title,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final url = "https://t.me/azimdev3";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                IconConstants.telegram,
                height: 35,
              ),
              SizedBox(width: 10),
              Text(
                "Telegram",
                style: context.title,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final url = "https://apple.com";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                IconConstants.website,
                height: 35,
              ),
              SizedBox(width: 10),
              Text(
                "Website",
                style: context.title,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final url = "tel:+998901234567";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                IconConstants.phone,
                height: 35,
              ),
              SizedBox(width: 10),
              Text(
                "Phone Number",
                style: context.title,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
