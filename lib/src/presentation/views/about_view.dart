import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeIn(
              delay: const Duration(milliseconds: 200),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child:
                    Text("About me", style: GoogleFonts.istokWeb(fontSize: 35)),
              ),
            ),
            FadeInUp(
              delay: const Duration(milliseconds: 600),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: !ResponsiveBreakpoints.of(context).isMobile
                    ? Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: SvgPicture.asset(
                              'assets/developerImage.svg',
                              semanticsLabel: 'Acme Logo',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                "I'm a self-taught web developer and Mobile App Developer with experience in designing new features from ideation to production, implementation of wireframes and design flows into high performance software applications. I take into consideration the user experience while writing reusable and efficient code. I passionately combine good design, technology, and innovation in all my projects, which I like to accompany from the first idea to release.Currently, I'm focused on the backend development.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.istokWeb(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: SvgPicture.asset(
                              'assets/developerImage.svg',
                              semanticsLabel: 'Acme Logo',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                "I'm a self-taught web developer and Mobile App Developer with experience in designing new features from ideation to production, implementation of wireframes and design flows into high performance software applications. I take into consideration the user experience while writing reusable and efficient code. I passionately combine good design, technology, and innovation in all my projects, which I like to accompany from the first idea to release.Currently, I'm focused on the backend development.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.istokWeb(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
            if (!ResponsiveBreakpoints.of(context).isMobile) ...[
              FadeIn(
                delay: const Duration(milliseconds: 700),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Technologies and Tools",
                    style: GoogleFonts.istokWeb(fontSize: 35),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInLeft(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/flutterio-icon.svg',
                      title: "Flutter",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: 'assets/dartlang-icon.svg',
                      title: "Dart",
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    child: const TecnoWidget(
                      assetUrl: "assets/python-original.svg",
                      title: "Python",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: "assets/django.svg",
                      title: "Django",
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/scala-original.svg',
                      title: "Scala",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInLeft(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/html5-original.svg',
                      title: "HTML",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: 'assets/css3-original.svg',
                      title: "CSS",
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    child: const TecnoWidget(
                      assetUrl: "assets/javascript-original.svg",
                      title: "JavaScript",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: "assets/qwik-original.svg",
                      title: "Qwik",
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/nestjs-original.svg',
                      title: "NestJS",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInLeft(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/git-scm-icon.svg',
                      title: "Git-Gihtub",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: 'assets/mongodb-original.svg',
                      title: "MongoDB",
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1200),
                    child: const TecnoWidget(
                      assetUrl: "assets/akka-original.svg",
                      title: "Akka",
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 1000),
                    child: const TecnoWidget(
                      assetUrl: "assets/supabase-original.svg",
                      title: "Supabase",
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: const TecnoWidget(
                      assetUrl: 'assets/firebase-icon.svg',
                      title: "Firebase",
                    ),
                  ),
                ],
              )
            ]
          ],
        ),
      ],
    );
  }
}

class TecnoWidget extends StatelessWidget {
  final String assetUrl;
  final String title;
  const TecnoWidget({
    super.key,
    required this.assetUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Card(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetUrl,
              semanticsLabel: title,
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                title,
                style: GoogleFonts.istokWeb(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
