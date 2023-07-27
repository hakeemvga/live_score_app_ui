import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/ExplorerScreen2.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  State<ExplorerScreen> createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff181829
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 28.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    hintText: "Search for news, team, match, etc...",
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
                  child: Image.asset("assets/model3.png")),
              SizedBox(height: 32.h),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const ExplorerScreen2()));
                  },
                  child: SizedBox(
                      height: 66,
                      width: 346,
                      child: Image.asset("assets/articel0.png"))),
              SizedBox(height: 32.h),
              SizedBox(
                  height: 66,
                  width: 346,
                  child: Image.asset("assets/articel1.png")),
              SizedBox(height: 32.h),
              SizedBox(
                  height: 66,
                  width: 346,
                  child: Image.asset("assets/articel2.png")),
              SizedBox(height: 32.h),
              SizedBox(
                  height: 66,
                  width: 346,
                  child: Image.asset("assets/articel3.png")),
              SizedBox(height: 32.h),
              Text("Trending News",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              SizedBox(height: 24.h),
              SizedBox(
                height: 170.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 169,
                      width: 241,
                      child: Image.asset("assets/articel4.png"),
                    ),
                    SizedBox(width: 12),
                    SizedBox(
                      height: 169,
                      width: 241,
                      child: Image.asset(
                        "assets/articel5.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
