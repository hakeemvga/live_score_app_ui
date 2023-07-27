import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/BottomNav.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

List<String> containerList = [
  "assets/Ellipse 72.png",
  "assets/gridcontainer.png",
  "assets/gridcontainer.png",
  "assets/gridcontainer.png",
  "assets/gridcontainer.png",
  "assets/gridcontainer.png",
];

List<String> myList = [
  "assets/soccer.png",
  "assets/basketball.png",
  "assets/football.png",
  "assets/baseball.png",
  "assets/tennis.png",
  "assets/volly.png",
];
List<String> tittle = [
  "  Soccer",
  "Basketball",
  "Football",
  "Baseball",
  "Tennis",
  "Vollyball"
];

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Padding(
        padding: EdgeInsets.only(left: 28.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90.h,width: double.infinity,),
            Text("What sport do\nyou interest?",
                style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(height: 14.h),
            Text("You can choose more than one",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff65656B))),
            SizedBox(height: 50.h),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 15.h),
                itemBuilder: (__, index) {
                  return SizedBox(
                    height: 92.h,
                    width: 92.w,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 92.h,
                          width: 92.w,
                          child: Image.asset(containerList[index]),
                        ),
                        Positioned(
                          top: 24.h,
                          left: 24.w,
                          child: SizedBox(
                            height: 44.h,
                            width: 44.w,
                            child: Image.asset(myList[index]),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 10,
                          child: Text(tittle[index],
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                }),
            SizedBox(height: 94.h),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const BottomNav()));
              },
              child: Container(
                width: 327.w,
                height: 63.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.sp),
                  color: const Color(0xff246BFD),
                ),
                child: Center(
                  child: Text("Continue",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 327.w,
              height: 63.h,
              child: Center(
                child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,color: Colors.white
                    )
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
