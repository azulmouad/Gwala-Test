part of 'screens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: child),
          const CardWelcomeBottomNavigation(),
        ],
      ),
    );
  }
}
