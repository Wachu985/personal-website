import 'package:go_router/go_router.dart';
import 'package:portfolio/src/presentation/screens/home_screen.dart';

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  )
]);
