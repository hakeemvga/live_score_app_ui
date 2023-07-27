import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/MatchDetailScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> containerList = [
  "assets/Ellipse 72.png",
  "assets/gridcontainer.png",
  "assets/gridcontainer.png",
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Padding(
        padding: EdgeInsets.only(left: 28.0.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const MatchDetailScreen()));
                  },
                  child: Text(
                    "LiveScore",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 149.w),
                Icon(
                  Icons.search,
                  size: 24.sp,
                  color: Colors.white,
                ),
                SizedBox(width: 24.w),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Image.asset("assets/notif2.png"),
                ),
              ],
            ),
            SizedBox(height: 9.h),
            SizedBox(
              width: 319.w,
              height: 177.h,
              child: Image.asset(
                "assets/banner.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              height: 120.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 115,
                    width: 108.w,
                    child: Image.asset("assets/active1.png"),
                  ),
                  SizedBox(width: 24.w),
                  SizedBox(
                    height: 115,
                    width: 108.w,
                    child: Image.asset("assets/non-active1.png"),
                  ),
                  SizedBox(width: 24.w),
                  Container(
                    height: 115,
                    width: 108.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff222232)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40.h,
                          width: 40.w,
                          child: Image.asset(
                            "assets/football.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          "Football",
                          style: TextStyle(
                            fontSize: 16.5.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              height: 35.h,
              width: 318.w,
              child: Image.asset("assets/spainc.png"),
            ),
            SizedBox(height: 14.h),
            SizedBox(
              height: 68.h,
              width: 319.w,
              child: Image.asset("assets/match12.png"),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              height: 35.h,
              width: 318.w,
              child: Image.asset("assets/match2.png"),
            ),
            SizedBox(height: 14.h),
            SizedBox(
              height: 68.h,
              width: 319.w,
              child: Image.asset("assets/match1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
