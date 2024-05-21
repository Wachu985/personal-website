// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:portfolio/src/presentation/cubit/app_cubit.dart';
import 'package:portfolio/src/presentation/widgets/shared/icon_media.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    return ResponsiveBreakpoints.of(context).isMobile
        ? ForMobileHome(size: size, colors: colors)
        : ForWebHome(size: size, colors: colors);
  }
}

class ForWebHome extends StatelessWidget {
  const ForWebHome({
    super.key,
    required this.size,
    required this.colors,
  });

  final Size size;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ParticlesFly(
          height: size.height,
          width: size.width,
          connectDots: false,
          numberOfParticles: 50,
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Row(
            children: [
              FadeInLeft(
                child: Padding(
                  padding: const EdgeInsets.all(200.0),
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: colors.onSurface, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/perfil.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 350,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 500),
                      child: Row(
                        children: [
                          Text(
                            "Hey, I'm Pedro Dominguez.",
                            style: GoogleFonts.istokWeb(fontSize: 30),
                          ),
                          Image.asset('assets/hi.gif', height: 45)
                        ],
                      ),
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 1000),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                                cursor: "|",
                                'Flutter Developer.',
                                speed: const Duration(milliseconds: 100),
                                textStyle: GoogleFonts.pacifico(
                                    fontSize: 30, color: Colors.blue)),
                            TypewriterAnimatedText('Web Developer.',
                                cursor: "|",
                                speed: const Duration(milliseconds: 100),
                                textStyle: GoogleFonts.pacifico(
                                    fontSize: 30, color: Colors.blue)),
                            TypewriterAnimatedText('Backend Developer.',
                                cursor: "|",
                                speed: const Duration(milliseconds: 100),
                                textStyle: GoogleFonts.pacifico(
                                    fontSize: 30, color: Colors.blue)),
                            TypewriterAnimatedText('1x Engineer.',
                                cursor: "|",
                                speed: const Duration(milliseconds: 100),
                                textStyle: GoogleFonts.pacifico(
                                    fontSize: 30, color: Colors.blue)),
                            TypewriterAnimatedText('Cuban :).',
                                cursor: "|",
                                speed: const Duration(milliseconds: 100),
                                textStyle: GoogleFonts.pacifico(
                                    fontSize: 30, color: Colors.blue)),
                          ],
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1000),
                        ),
                      ),
                    ),
                    FadeInRight(
                      delay: const Duration(milliseconds: 1000),
                      child: Text(
                        "Welcome to my personal website, here you will have all the necessary information about me, my work, my hobbies and what makes me unique as a person. Always focused on creating remarkable experiences and amazing impressions through software development... anytime, anywhere.",
                        style: GoogleFonts.istokWeb(fontSize: 17),
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          FadeInUp(
                            delay: const Duration(milliseconds: 1200),
                            child: IconMedia(
                                onTap: () async => await launchUrl(
                                    Uri.parse('https://x.com/wachu985')),
                                icon: FontAwesomeIcons.twitter),
                          ),
                          FadeInDown(
                            delay: const Duration(milliseconds: 1400),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: IconMedia(
                                onTap: () async => await launchUrl(
                                    Uri.parse('https://github.com/Wachu985')),
                                icon: FontAwesomeIcons.github,
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
                              backgroundColor: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FadeIn(
                      delay: const Duration(milliseconds: 1800),
                      child: ElevatedButton(
                        onPressed: () {
                          AnchorElement anchorElement =
                              AnchorElement(href: 'assets/cv.pdf');
                          anchorElement.download = "CV Pedro Dominguez";
                          anchorElement.click();
                        },
                        style: ElevatedButton.styleFrom(elevation: 5),
                        child: const Text("Download CV"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Pulse(
            duration: const Duration(seconds: 2),
            infinite: true,
            child: FloatingActionButton(
              onPressed: () => context.read<AppCubit>().scrollToIndex(1),
              shape: const CircleBorder(),
              child: const Icon(Icons.arrow_downward_rounded),
            ),
          ),
        )
      ],
    );
  }
}

class ForMobileHome extends StatelessWidget {
  const ForMobileHome({
    super.key,
    required this.size,
    required this.colors,
  });

  final Size size;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ParticlesFly(
          height: size.height,
          width: size.width,
          connectDots: false,
          numberOfParticles: 100,
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Column(
            children: [
              FadeInLeft(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 50, right: 50),
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: colors.onSurface, blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/perfil.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 400,
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInDown(
                        delay: const Duration(milliseconds: 500),
                        child: Row(
                          children: [
                            Text(
                              "Hey, I'm Pedro Dominguez.",
                              style: GoogleFonts.istokWeb(fontSize: 30),
                            ),
                            Image.asset('assets/hi.gif', height: 45)
                          ],
                        ),
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 1000),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  cursor: "|",
                                  'Flutter Developer.',
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: GoogleFonts.pacifico(
                                      fontSize: 30, color: Colors.blue)),
                              TypewriterAnimatedText('Technical Writer.',
                                  cursor: "|",
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: GoogleFonts.pacifico(
                                      fontSize: 30, color: Colors.blue)),
                              TypewriterAnimatedText('1xEngineer.',
                                  cursor: "|",
                                  speed: const Duration(milliseconds: 100),
                                  textStyle: GoogleFonts.pacifico(
                                      fontSize: 30, color: Colors.blue)),
                            ],
                            repeatForever: true,
                            pause: const Duration(milliseconds: 1000),
                          ),
                        ),
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 1000),
                        child: Text(
                          "Welcome to my personal website, here you will have all the necessary information about me, my work, my hobbies and what makes me unique as a person. Always focused on creating remarkable experiences and amazing impressions through software development... anytime, anywhere.",
                          style: GoogleFonts.istokWeb(fontSize: 17),
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            FadeInUp(
                              delay: const Duration(milliseconds: 1200),
                              child: IconMedia(
                                  onTap: () async => await launchUrl(
                                      Uri.parse('https://x.com/wachu985')),
                                  icon: FontAwesomeIcons.twitter),
                            ),
                            FadeInDown(
                              delay: const Duration(milliseconds: 1400),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: IconMedia(
                                  onTap: () async => await launchUrl(
                                      Uri.parse('https://github.com/Wachu985')),
                                  icon: FontAwesomeIcons.github,
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
                                backgroundColor: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeIn(
                        delay: const Duration(milliseconds: 1800),
                        child: ElevatedButton(
                          onPressed: () {
                            AnchorElement anchorElement =
                                AnchorElement(href: 'assets/cv.pdf');
                            anchorElement.download = "CV Pedro Dominguez";
                            anchorElement.click();
                          },
                          style: ElevatedButton.styleFrom(elevation: 5),
                          child: const Text("Download CV"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Pulse(
            duration: const Duration(seconds: 2),
            infinite: true,
            child: FloatingActionButton(
              onPressed: () => context.read<AppCubit>().scrollToIndex(1),
              shape: const CircleBorder(),
              child: const Icon(Icons.arrow_downward_rounded),
            ),
          ),
        )
      ],
    );
  }
}
