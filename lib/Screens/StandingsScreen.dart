import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/StandingDetailScreen.dart';

class StandingScreen extends StatefulWidget {
  const StandingScreen({Key? key}) : super(key: key);

  @override
  State<StandingScreen> createState() => _StandingScreenState();
}

class _StandingScreenState extends State<StandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 52.h,
              width: double.infinity,
            ),
            Container(
              width: 327,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.sp),
                color: const Color(0xff222232),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search your competition ...",
                  hintStyle: TextStyle(color: Color(0xff65656B)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff65656B),
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 46,
              width: 346,
              child: Image.asset(
                "assets/model3.png",
              ),
            ),
            SizedBox(height: 28.h),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const StandingDetailScreen()));
              },
              child: SizedBox(
                height: 35,
                width: 318,
                child: Image.asset(
                  "assets/spainc.png",
                ),
              ),
            ),
            SizedBox(height: 18.h),
            SizedBox(
              height: 215,
              width: 318,
              child: Image.asset(
                "assets/standing0.png",
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 35,
              width: 318,
              child: Image.asset(
                "assets/match2.png",
              ),
            ),
            SizedBox(height: 18.h),
            SizedBox(
              height: 215,
              width: 318,
              child: Image.asset(
                "assets/standing1.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
