import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:landing_page/views/app/widget/tabs_mobile_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageApp extends StatelessWidget {
  const LandingPageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    'assets/profile.png',
                  ),
                ),
              ),
            ),
            const TabsMobileWidget(text: "Home", route: ''),
            const SizedBox(
              height: 20,
            ),
            const TabsMobileWidget(text: "Works", route: ''),
            const SizedBox(
              height: 20,
            ),
            const TabsMobileWidget(text: "Blog", route: ''),
            const SizedBox(
              height: 20,
            ),
            const TabsMobileWidget(text: "About", route: ''),
            const SizedBox(
              height: 20,
            ),
            const TabsMobileWidget(text: "Contact", route: ''),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://www.instagram.com/thamer_kehail/'));
                    },
                    icon: SvgPicture.asset(
                      'assets/instagram.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://www.instagram.com/thamer_kehail/'));
                    },
                    icon: SvgPicture.asset(
                      'assets/instagram.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://www.instagram.com/thamer_kehail/'));
                    },
                    icon: SvgPicture.asset(
                      'assets/instagram.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/profile.png',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: Text(
                          "Hello I'm",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Thamer Kehail",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const Text(
                      "Mobile Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: const [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: const [
                        Text(
                          "thamerkehail@outlook.com",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "962786007814",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Amman-Khalda",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
