import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/ArticleScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 52.h,
            width: double.infinity,
          ),
          Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset("assets/photoprofile.png"),
              ),
              Positioned(
                  left: 68,
                  top: 68,
                  child: SizedBox(
                    height: 32.h,
                    width: 32.w,
                    child: Image.asset("assets/editprofile.png"),
                  ))
            ],
          ),
          SizedBox(height: 24.h),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ArticleScreen()));
            },
            child: Text("Brian Imanuel",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
          SizedBox(height: 6.h),
          Text("#YNWK till the end 🔥",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffc4c4c4))),
          SizedBox(height: 32.h),
          SizedBox(
            width: 293.w,
            height: 46.h,
            child: Image.asset("assets/14.png"),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: 319.w,
            height: 59.h,
            child: Image.asset(
              "assets/10.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 319.w,
            height: 59.h,
            child: Image.asset(
              "assets/11.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 319.w,
            height: 59.h,
            child: Image.asset(
              "assets/12.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 319.w,
            height: 59.h,
            child: Image.asset(
              "assets/13.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
