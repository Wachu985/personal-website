import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: SvgPicture.asset(
            'assets/bubbles2.svg',
            semanticsLabel: 'Acme Logo',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeIn(
              delay: const Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child:
                    Text("Projects", style: GoogleFonts.istokWeb(fontSize: 35)),
              ),
            ),
            if (!ResponsiveBreakpoints.of(context).isMobile) ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInLeft(
                    delay: const Duration(milliseconds: 500),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0, left: 20),
                      child: ProjectsWidget(
                        imageProject: 'assets/universo.png',
                        title: "UniversoSeries",
                        description:
                            "It is a project that allows the viewing of series on the server, featuring an intuitive and minimalist interface.",
                      ),
                    ),
                  ),
                  FadeInDown(
                    delay: const Duration(milliseconds: 800),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ProjectsWidget(
                        imageProject: 'assets/cap.png',
                        title: "Flutte Wireguard Vpn",
                        description:
                            "It is a Flutter library that uses Dart to enable Android applications to connect with the WireGuard VPN protocol.",
                      ),
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 1000),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ProjectsWidget(
                        imageProject:
                            'assets/38404a9f-b4f3-4dbd-b569-ccab896b9d1d.jpg',
                        title: "Forzar 4G",
                        description:
                            "It is a project that allows mobile devices to force a 4G connection, thereby improving connection quality.",
                      ),
                    ),
                  )
                ],
              ),
              FadeInUp(
                delay: const Duration(milliseconds: 1200),
                child: const ProjectsWidget(
                  imageProject: 'assets/flutter_04.png',
                  title: "Flutter Ecomerce",
                  description:
                      "It is an e-commerce store with a backend in NestJS and a mobile app with its web, allowing for retail sales from a store.",
                ),
              ),
            ] else ...[
              FadeInLeft(
                delay: const Duration(milliseconds: 500),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, right: 10.0, left: 20),
                  child: ProjectsWidget(
                    imageProject: 'assets/universo.png',
                    title: "UniversoSeries",
                    description:
                        "It is a project that allows the viewing of series on the server, featuring an intuitive and minimalist interface.",
                  ),
                ),
              ),
              FadeInDown(
                delay: const Duration(milliseconds: 800),
                child: const Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, right: 10.0, left: 20),
                  child: ProjectsWidget(
                    imageProject: 'assets/cap.png',
                    title: "Flutte Wireguard Vpn",
                    description:
                        "It is a Flutter library that uses Dart to enable Android applications to connect with the WireGuard VPN protocol.",
                  ),
                ),
              ),
            ]
          ],
        )
      ],
    );
  }
}

class ProjectsWidget extends StatelessWidget {
  final String imageProject;
  final String description;
  final String title;
  const ProjectsWidget({
    super.key,
    required this.imageProject,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: !ResponsiveBreakpoints.of(context).isMobile ? 336 : 330,
      width: 400,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: !ResponsiveBreakpoints.of(context).isMobile ? 165 : 150,
                width: 400,
                child: Image.asset(
                  imageProject,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Text(title, style: GoogleFonts.istokWeb(fontSize: 25)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                description,
                style: GoogleFonts.istokWeb(fontSize: 17),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                  !ResponsiveBreakpoints.of(context).isMobile ? 5.0 : 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 3),
                  onPressed: () {},
                  child: const Text("Read More")),
            )
          ],
        ),
      ),
    );
  }
}
