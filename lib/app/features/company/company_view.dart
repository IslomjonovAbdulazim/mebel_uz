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
            final url = "https://t.me/vkmusbot";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                IconConstants.tgBot,
                height: 35,
                color: context.textPrimary,
              ),
              SizedBox(width: 10),
              Text(
                "Telegram  Bot",
                style: context.title,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}

class _Contact extends StatelessWidget {
  const _Contact();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Bog'lanish",
          style: context.display,
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
                height: 30,
                color: context.textPrimary,
              ),
              SizedBox(width: 10),
              Text(
                "(90)  123-45-67",
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
                height: 30,
                color: context.textPrimary,
              ),
              SizedBox(width: 10),
              Text(
                "(90)  123-45-67",
                style: context.title,
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final url = "https://t.me/abduazim_islomjonov";
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text(
            "Abduazim   Islomjonov",
            style: context.title,
          ),
        ),
      ],
    );
  }
}

class _Location extends StatelessWidget {
  const _Location();

  @override
  Widget build(BuildContext context) {
    double latitude = 41.3265322;
    double longitude = 69.2284909;
    return Column(
      children: [
        Text(
          "Lokatsiya",
          style: context.display,
        ),
        Container(
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlutterMap(
              options: MapOptions(
                onTap: (_, __) async {
                  final Uri googleMapsUri = Uri.parse(
                      "geo:$latitude,$longitude?q=$latitude,$longitude");
                  final Uri googleMapsWebUri = Uri.parse(
                      "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude");
                  final Uri appleMapsUri = Uri.parse(
                      "https://maps.apple.com/?q=$latitude,$longitude");
                  final Uri yandexMapsUri = Uri.parse(
                      "yandexmaps://maps.yandex.ru/?ll=$longitude,$latitude&z=12");
                  final Uri yandexMapsWebUri = Uri.parse(
                      "https://yandex.com/maps/?ll=$longitude,$latitude&z=12");

                  if (Platform.isAndroid) {
                    if (await canLaunchUrl(yandexMapsUri)) {
                      await launchUrl(yandexMapsUri);
                    } else if (await canLaunchUrl(googleMapsUri)) {
                      await launchUrl(googleMapsUri);
                    } else {
                      await launchUrl(googleMapsWebUri);
                    }
                  } else if (Platform.isIOS) {
                    if (await canLaunchUrl(yandexMapsUri)) {
                      await launchUrl(yandexMapsUri);
                    } else if (await canLaunchUrl(appleMapsUri)) {
                      await launchUrl(appleMapsUri);
                    } else {
                      await launchUrl(yandexMapsWebUri);
                    }
                  } else {
                    await launchUrl(googleMapsWebUri);
                  }
                },
                initialZoom: 16,
                initialCenter: LatLng(latitude, longitude),
                maxZoom: 30,
                minZoom: 10,
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: LatLng(latitude, longitude),
                      width: 40,
                      height: 40,
                      child: const Icon(
                        Icons.location_pin,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
