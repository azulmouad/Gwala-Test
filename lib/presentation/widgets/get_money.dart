part of 'widgets.dart';

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
