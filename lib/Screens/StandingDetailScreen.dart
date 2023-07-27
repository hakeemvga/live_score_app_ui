import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StandingDetailScreen extends StatefulWidget {
  const StandingDetailScreen({Key? key}) : super(key: key);

  @override
  State<StandingDetailScreen> createState() => _StandingDetailScreenState();
}

class _StandingDetailScreenState extends State<StandingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      appBar: AppBar(
        backgroundColor: const Color(0xff181829),
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: SizedBox(
          height: 21.h,
          width: 59.w,
          child: Image.asset("assets/es.png"),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 28.h, width: double.infinity),
          SizedBox(
            height: 112.h,
            width: 112.w,
            child: Image.asset("assets/liga.png"),
          ),
          SizedBox(height: 18.h),
          Text("La Liga",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.only(left: 28.0.w, right: 28.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity),
                SizedBox(
                  height: 46.h,
                  width: 225,
                  child: Image.asset("assets/tc.png"),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 35.h,
                  width: 318,
                  child: Image.asset("assets/#team.png"),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/16.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/17.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/18.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/19.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/20.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/21.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 46.h,
                  width: 325,
                  child: Image.asset(
                    "assets/22.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
