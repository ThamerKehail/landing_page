import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing_page/view_model/web_view_model.dart';
import 'package:landing_page/views/web/widgets/animated_card_web.dart';
import 'package:landing_page/views/web/widgets/tabs_web.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app/widget/teal_container.dart';
import 'widgets/text_form.dart';

class LandingPageWeb extends StatelessWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            TabsWeb(
              text: "Home",
            ),
            TabsWeb(
              text: "Works",
            ),
            TabsWeb(
              text: "Blog",
            ),
            TabsWeb(
              text: "About",
            ),
            TabsWeb(
              text: "Contact",
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black, size: 25.0),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  'assets/profile.png',
                ),
              ),
            ),
            const Text(
              "Thamer Kehail",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First Page
          SizedBox(
            height: heightDevice - 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),
          //Second Page
          SizedBox(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/web.jpg",
                  height: widthDevice / 1.9,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "About me",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .4,
                      child: const Text(
                        "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 3.0,
                      runSpacing: 7.0,
                      children: const [
                        TealContainer(text: "Flutter"),
                        TealContainer(text: "Firebase"),
                        TealContainer(text: "Android"),
                        TealContainer(text: "Windows"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //Third Page
          SizedBox(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "What I do?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AnimatedCardWeb(
                      image: 'assets/webL.png',
                      text: "Web Development",
                    ),
                    AnimatedCardWeb(
                      image: 'assets/app.png',
                      text: "App Development",
                      reverse: true,
                      fit: BoxFit.contain,
                    ),
                    AnimatedCardWeb(
                      image: 'assets/firebase.png',
                      text: "Back-end Development",
                    ),
                  ],
                )
              ],
            ),
          ),
          //Frth Page
          SizedBox(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Contact me",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        TextForm(
                          label: "First Name",
                          hint: "Please enter your first name ",
                          width: 350,
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          label: "Email",
                          hint: "Please enter your email address ",
                          width: 350,
                          maxLine: 1,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        TextForm(
                          label: "Last Name",
                          hint: "Please enter your last name ",
                          width: 350,
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          label: "Phone",
                          hint: "Please enter your phone number ",
                          width: 350,
                          maxLine: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  label: "Message",
                  hint: "Please enter your message ",
                  width: widthDevice / 1.5,
                  maxLine: 10,
                ),
                MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: const Text("Submit"),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
