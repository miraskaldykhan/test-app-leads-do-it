import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leadsdoit_test/core/assets.dart';
import 'package:leadsdoit_test/core/models/events.dart';

class HomePage extends StatefulWidget {
  final Events events;

  const HomePage(
    this.events, {
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        child: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                appBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: widget.events.events.map((e) {
                        return matchCard(e);
                      }).toList(),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget appBar() => Container(
        width: double.infinity,
        height: 110.h,
        decoration: const BoxDecoration(
          color: Color(0xff242424),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 47.r,
            height: 47.r,
            margin: EdgeInsets.only(bottom: 15.h),
            child: SvgPicture.asset(
              AssetsConstants.icons.ballIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      );

  Widget matchCard(Event event) => Container(
        width: 374.w,
        height: 174.h,
        margin: EdgeInsets.only(top: 24.h),
        // padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: const Color(0xff383838),
          borderRadius: BorderRadius.all(
            Radius.circular(
              5.r,
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            matchLeagueInfo(event),
            SizedBox(height: 8.h),
            Center(
              child: matchStatusText(
                status: (event.strStatus == "1H") || (event.strStatus == "2H")
                    ? "Live"
                    : event.strStatus ?? "Default",
                color: (event.strStatus == "1H") || (event.strStatus == "2H")
                    ? const Color(0xffff7b31)
                    : const Color(0xffB9B9B9),
              ),
            ),
            SizedBox(height: 4.h),
            matchTeamsName(event),
            SizedBox(height: 4.h),
            matchScore(event),
          ],
        ),
      );

  Widget matchLeagueInfo(Event event) => Container(
        height: 29.h,
        width: 354.w,
        decoration: BoxDecoration(
          color: const Color(0xff242424),
          borderRadius: BorderRadius.circular(3.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AssetsConstants.icons.cupIcon),
                  SizedBox(
                    width: 13.w,
                  ),
                  Text(
                    event.strLeague ?? "Default League",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                event.dateEvent ?? "00.00",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );

  Widget matchStatusText({required String status, required Color color}) =>
      Text(
        status,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: color,
        ),
      );

  Widget matchTeamsName(Event event) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text(
                event.strHomeTeam ?? "Home Team",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 61.h,
            width: 1.w,
            decoration: const BoxDecoration(
              color: Color(
                0xff535353,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                event.strAwayTeam ?? "Away Team",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );

  Widget matchScore(Event event) => Container(
        height: 29.h,
        width: 354.w,
        decoration: BoxDecoration(
          color: const Color(0xff242424),
          borderRadius: BorderRadius.circular(3.0.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              event.intHomeScore ?? "-",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: (event.strStatus == "1H") || (event.strStatus == "2H")
                    ? const Color(0xffff7b31)
                    : Colors.white,
              ),
            ),
            Text(
              event.intAwayScore ?? "-",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: (event.strStatus == "1H") || (event.strStatus == "2H")
                    ? const Color(0xffff7b31)
                    : Colors.white,
              ),
            ),
          ],
        ),
      );
}
