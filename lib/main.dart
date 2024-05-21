import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/src/core/router/app_router.dart';
import 'package:portfolio/src/core/theme/app_theme.dart';
import 'package:portfolio/src/presentation/cubit/app_cubit.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => AppCubit()..initialListener(),
    lazy: false,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      builder: responsiveBuilder,
      theme: AppTheme(
          darkMode: context
              .select((AppCubit cubit) => cubit.state.darkMode)).getTheme(),
    );
  }

  Widget responsiveBuilder(context, child) => ResponsiveBreakpoints.builder(
        child: Builder(
          builder: (context) {
            return MaxWidthBox(
              maxWidth: 1921,
              background: Container(color: const Color(0xFFF5F5F5)),
              child: ResponsiveScaledBox(
                width: ResponsiveValue<double?>(
                  context,
                  conditionalValues: [
                    const Condition.equals(name: MOBILE, value: 450),
                    const Condition.between(start: 451, end: 800, value: 1600),
                    const Condition.between(start: 800, end: 1100, value: 1600),
                    const Condition.between(
                        start: 1000, end: 1200, value: 1600),
                    const Condition.between(
                        start: 1200, end: 1920, value: 1600),
                  ],
                ).value,
                child: child!,
              ),
            );
          },
        ),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      );
}
