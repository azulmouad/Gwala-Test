part of 'helpers.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static const String screenSplash = "/";
  static const String screenGetMoney = "get-money";
  static const String screenProfile = "profile";
  static const String screenTimeTracker = "time-tracker";

  // GoRouter configuration
  static final router = GoRouter(
    initialLocation: "/",
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: screenSplash,
        builder: (context, state) => const SplashScreen(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return WelcomeScreen(child: child);
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: "/$screenGetMoney",
            name: screenGetMoney,
            builder: (context, state) => const GetMoneyPage(),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: "/$screenProfile",
            name: screenProfile,
            builder: (context, state) => const ProfilePage(),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: "/$screenTimeTracker",
            name: screenTimeTracker,
            builder: (context, state) => const TimeTracker(),
          ),
        ],
      ),
    ],
  );
}
