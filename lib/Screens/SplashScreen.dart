import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Padding(
        padding: EdgeInsets.only(left: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64.h, width: double.infinity),
            SizedBox(
              height: 338.h,
              width: 291.w,
              child: Image.asset("assets/p1.png"),
            ),
            SizedBox(height: 80.h),
            Text("Dicover all\nabout sport",
                style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(height: 14.h),
            Text(
                "Search millions of jobs and get the\ninside scoop on companies.\nWait for what? Let’s get start it!",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff65656B))),
            SizedBox(height: 45.h),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child: Container(
                    width: 199.w,
                    height: 63.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: const Color(0xff246BFD),
                    ),
                    child: Center(
                      child: Text("Sign in",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(width: 39.w),
                Text("Sign Up",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
