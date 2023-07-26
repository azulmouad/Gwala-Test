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

class CardWelcomeBottomNavigation extends StatelessWidget {
  const CardWelcomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final String urlName = GoRouterState.of(context).uri.toString();
    debugPrint("url: $urlName");
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Ink(
          width: 100.w,
          height: 80,
          decoration: const BoxDecoration(
              color: AppColors.kBottomNavigatorBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
        ),
        Container(
          width: 100.w,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardBottomNavItem(
                icon: FontAwesomeIcons.clockRotateLeft,
                label: "Timer tracker",
                isSelected: urlName == "/${AppRouter.screenTimeTracker}",
                onTap: () {
                  AppRouter.router.pushNamed(AppRouter.screenTimeTracker);
                },
              ),
              CardBottomNavItem(
                icon: FontAwesomeIcons.solidUser,
                label: "Profile",
                isSelected: urlName == "/${AppRouter.screenProfile}",
                onTap: () {
                  AppRouter.router.pushNamed(AppRouter.screenProfile);
                },
              ),
            ],
          ),
        ),
        CardBottomNavCenterItem(
          isSelected: urlName == "/${AppRouter.screenGetMoney}",
          onTap: () {
            AppRouter.router.pushNamed(AppRouter.screenGetMoney);
          },
        ),
      ],
    );
  }
}

class CardBottomNavCenterItem extends StatelessWidget {
  const CardBottomNavCenterItem(
      {super.key, this.isSelected = false, required this.onTap});
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 11.h,
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: const CircleAvatar(
              radius: 33,
              backgroundColor: AppColors.kPrimaryColor,
              child: Icon(
                FontAwesomeIcons.firstOrderAlt,
                size: 55,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            "Get money",
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class CardBottomNavItem extends StatelessWidget {
  const CardBottomNavItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      this.isSelected = false});
  final IconData icon;
  final String label;
  final Function() onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? AppColors.kPrimaryColor
                : AppColors.kBottomNavigatorIcon,
            size: 20.sp,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? AppColors.kPrimaryColor
                  : AppColors.kBottomNavigatorIcon,
              fontSize: 16.sp,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
