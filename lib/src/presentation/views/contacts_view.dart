import 'package:animate_do/animate_do.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/presentation/widgets/shared/icon_media.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: SvgPicture.asset(
            'assets/bubbles.svg',
            semanticsLabel: 'Acme Logo',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(
                delay: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    "Conect with me",
                    style: GoogleFonts.istokWeb(fontSize: 35),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    FadeInUp(
                      delay: const Duration(milliseconds: 1200),
                      child: IconMedia(
                        onTap: () async => await launchUrl(
                            Uri.parse('https://x.com/wachu985')),
                        icon: FontAwesomeIcons.twitter,
                        iconSize: 100,
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1400),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconMedia(
                          onTap: () async => await launchUrl(
                              Uri.parse('https://github.com/Wachu985')),
                          icon: FontAwesomeIcons.github,
                          iconSize: 100,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1600),
                      child: IconMedia(
                        onTap: () async => await launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/pedro-dominguez-bonilla-9575292a9/')),
                        icon: FontAwesomeIcons.linkedin,
                        iconSize: 100,
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                    FadeInDown(
                      delay: const Duration(milliseconds: 1400),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconMedia(
                          onTap: () async => await launchUrl(
                              Uri.parse('https://www.instagram.com/wachu985/')),
                          icon: FontAwesomeIcons.instagram,
                          iconSize: 100,
                          backgroundColor: Colors.redAccent,
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1600),
                      child: IconMedia(
                        onTap: () async =>
                            await launchUrl(Uri.parse('https://t.me/Wachu985')),
                        icon: FontAwesomeIcons.telegramPlane,
                        iconSize: 100,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1600),
                      child: IconMedia(
                        onTap: () async => await launchUrl(Uri(
                          scheme: 'mailto',
                          path: 'pedrobonilla985@gmail.com',
                          query: encodeQueryParameters(<String, String>{
                            'subject': 'Hey, i need meet with you!',
                          }),
                        )),
                        icon: FontAwesomeIcons.google,
                        iconSize: 100,
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: FadeInDownBig(
            delay: const Duration(milliseconds: 2000),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ",
                    style: GoogleFonts.istokWeb(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () async => await launchUrl(Uri.parse(
                        'https://www.instagram.com/aimi2401?igsh=MXZkeDZoeGx4ZjNlag==')),
                    child: Text(
                      "❤",
                      style:
                          GoogleFonts.istokWeb(fontSize: 25, color: Colors.red),
                    ),
                  ),
                  Text(
                    " by Wachu985",
                    style: GoogleFonts.istokWeb(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
