import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/src/presentation/cubit/app_cubit.dart';
import 'package:portfolio/src/presentation/views/about_view.dart';
import 'package:portfolio/src/presentation/views/contacts_view.dart';
import 'package:portfolio/src/presentation/views/home_view.dart';
import 'package:portfolio/src/presentation/views/projects_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MenuController menuController = MenuController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> listPages = [
      const HomeView(),
      const AboutView(),
      const ProjectsView(),
      const ContactsView()
    ];
    final TextTheme textTheme = Theme.of(context).textTheme;
    final pageController = context.read<AppCubit>().pageController;
    final cubit = context.read<AppCubit>();
    final showAppBar = context.watch<AppCubit>().state.showAppbar;
    return Scaffold(
      body: Column(
        children: [
          showAppBar
              ? FadeIn(
                  child: Material(
                    elevation: 10,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Wachu985",
                            style: textTheme.titleMedium,
                          ),
                        ),
                        if (!ResponsiveBreakpoints.of(context).isMobile) ...[
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                        ] else ...[
                          const Spacer(),
                          const Spacer(),
                        ],
                        IconButton(
                          onPressed: () =>
                              context.read<AppCubit>().toogleDarkMode(),
                          icon: context.select(
                            (AppCubit cubit) => cubit.state.darkMode
                                ? const Icon(Icons.wb_sunny_rounded)
                                : const Icon(Icons.dark_mode_rounded),
                          ),
                        ),
                        if (!ResponsiveBreakpoints.of(context).isMobile) ...[
                          const Spacer(),
                          const Spacer(),
                        ] else ...[
                          const Spacer(),
                          const Spacer(),
                          const Spacer(),
                        ],
                        if (!ResponsiveBreakpoints.of(context).isMobile) ...[
                          TextButton(
                              onPressed: () => cubit.scrollToIndex(0),
                              child: const Text("Home")),
                          const SizedBox(width: 5),
                          TextButton(
                              onPressed: () => cubit.scrollToIndex(1),
                              child: const Text("About")),
                          const SizedBox(width: 5),
                          TextButton(
                              onPressed: () => cubit.scrollToIndex(2),
                              child: const Text("Projects")),
                          const SizedBox(width: 5),
                          TextButton(
                              onPressed: () => cubit.scrollToIndex(3),
                              child: const Text("Contact")),
                          const SizedBox(width: 20)
                        ] else ...[
                          MenuAnchor(
                            controller: menuController,
                            menuChildren: [
                              MenuItemButton(
                                child: const Text("Home"),
                                onPressed: () => cubit.scrollToIndex(0),
                              ),
                              MenuItemButton(
                                child: const Text("About"),
                                onPressed: () => cubit.scrollToIndex(1),
                              ),
                              MenuItemButton(
                                child: const Text("Projects"),
                                onPressed: () => cubit.scrollToIndex(2),
                              ),
                              MenuItemButton(
                                child: const Text("Contact"),
                                onPressed: () => cubit.scrollToIndex(3),
                              ),
                            ],
                            child: IconButton(
                              onPressed: () => menuController.isOpen
                                  ? menuController.close()
                                  : menuController.open(),
                              icon: const Icon(Icons.menu_rounded),
                            ),
                          )
                        ]
                      ],
                    ),
                  ),
                )
              : Container(),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              controller: pageController,
              children: listPages,
            ),
          )
        ],
      ),
    );
  }
}
