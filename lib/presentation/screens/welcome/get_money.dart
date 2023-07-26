part of '../screens.dart';

class GetMoneyPage extends StatelessWidget {
  const GetMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 100.w,
            color: AppColors.kPrimaryColor,
            padding: EdgeInsets.only(
              top: context.getPadding.top,
              left: 20,
              right: 20,
              bottom: 30,
            ),
            child: Column(
              children: [
                ///Welcome User name & Bell
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Welcome ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                          TextSpan(
                            text: "Ama",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.solidBell,
                            color: AppColors.kPrimaryColorDark,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.kBellIcon,
                          radius: 10,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                ///Circle Details Balance
                Container(
                  width: 35.h,
                  height: 35.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                        )
                      ]),
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    width: context.getSize.width,
                    height: context.getSize.height,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.kPrimaryColorDark,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: context.getSize.width,
                      height: context.getSize.height,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next Pay date',
                            style: TextStyle(
                              color: AppColors.kColorHintDark,
                              fontSize: 18.sp,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.calendarDays,
                                color: AppColors.kPrimaryColorDark,
                                size: 18.sp,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '15 July',
                                style: TextStyle(
                                  color: AppColors.kPrimaryColorDark,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '3747.00 DH',
                            style: TextStyle(
                              color: AppColors.kPrimaryColorDark,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Available balance',
                            style: TextStyle(
                              color: AppColors.kPrimaryColorDark,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          /// Latest Trans
          Text(
            'Latest transactions',
            style: TextStyle(
              color: AppColors.kPrimaryFontDark,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              itemBuilder: (_, i) {
                return CardLatestTransItem(
                  amount: "${i + 2}00.00",
                  date: "July 0${i + 2}, 2023",
                );
              },
              separatorBuilder: (_, i) => const SizedBox(height: 15),
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class CardLatestTransItem extends StatelessWidget {
  const CardLatestTransItem(
      {super.key, required this.amount, required this.date});
  final String amount;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
        color: AppColors.kBottomNavigatorBackground,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 17,
        horizontal: 20,
      ),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.circleArrowUp,
            color: AppColors.kArrowIcon,
          ),
          const SizedBox(width: 15),
          Text(
            amount,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17.sp,
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Sent',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
