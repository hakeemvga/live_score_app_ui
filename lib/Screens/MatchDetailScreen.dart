import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/H2HScreen.dart';


class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({Key? key}) : super(key: key);

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff181829),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(280.h),
          child: AppBar(
            backgroundColor: const Color(0xff181829),

            elevation: 0,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: Text("UEFA Champions League",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),

            //SizedBox(height: 31.h),
            centerTitle: true,

            flexibleSpace: Column(
              children: [
                SizedBox(height: 108.h),
                Row(
                  children: [
                    SizedBox(width: 38.w),
                    Container(
                      height: 103.h,
                      width: 73.w,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset("assets/containerlive.png"),
                              ),
                              Positioned(
                                left: 12.w,
                                top: 12.h,
                                child: SizedBox(
                                  height: 36.h,
                                  width: 36.w,
                                  child: Image.asset("assets/arsenal.png"),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Text("Arsenal",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                    SizedBox(width: 41.w),
                    Column(
                      children: [
                        Text("2 - 3",
                            style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        SizedBox(height: 20.h),
                        Text("90.15",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(width: 41.w),
                    Container(
                      height: 103.h,
                      width: 73.w,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset("assets/containerlive.png"),
                              ),
                              Positioned(
                                left: 12.w,
                                top: 12.h,
                                child: SizedBox(
                                  height: 36.h,
                                  width: 36.w,
                                  child: Image.asset("assets/astonvilla.png"),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Text("Aston Villa",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 37.h),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(46.h),
              child: SizedBox(
                width: 287,
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    gradient: const LinearGradient(
                        colors: [Color(0xffF4A58A), Color(0xffED6B4E)]),
                    // color: LinearGradient( colors: []),
                  ),
                  tabs: [
                    Tab(
                      text: "Match Details",
                    ),
                    Tab(
                      text: "Line Up",
                    ),
                    Tab(
                      text: "H2H",
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(height: 40.h),
                SizedBox(
                  width: 230.w,
                  height: 190,
                  child: Image.asset(
                    "assets/shottingContainer.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  children: [
                    SizedBox(width: 40.w),
                    Text("Other Match",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    SizedBox(width: 167.w),
                    Text("See all",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffc4c4c4))),
                  ],
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 68.h,
                  width: 319,
                  child: Image.asset("assets/match12.png"),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 68.h,
                  width: 319,
                  child: Image.asset("assets/ts.png"),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Formation",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(width: 14.w),
                      Text(
                        "(4-2-3-1)",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffc4c4c4)),
                      )
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 29.w),
                    child: Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            gradient: LinearGradient(
                                colors: [Color(0xffF4A58A), Color(0xffED6B4E)]),
                          ),
                          child: Center(
                            child: Text("Arsenal",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        SizedBox(width: 28.w),
                        Text("Aston Villa",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding:  EdgeInsets.only(left: 29.w),
                    child: SizedBox(
                      height: 389.h,
                      width: 320.w,
                      child: Image.asset("assets/fieldFootball.png"),
                    ),
                  )
                ],
              ),
            ),
            H2HScreen(),
          ],
        ),
      ),
    );
  }
}
