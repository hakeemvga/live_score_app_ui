import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 330,
                width: 420,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.sp),
                      bottomRight: Radius.circular(30.sp)),
                  child: Image.asset(
                    "assets/15.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 46.h,
                left: 30.w,
                child: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 46.h,
                right: 30.w,
                child: SizedBox(
                    height: 52.h,
                    width: 52.w,
                    child: Image.asset("assets/share.png")),
              ),
              Positioned(
                top: 130.h,
                right: 30.w,
                child: SizedBox(
                    height: 52.h,
                    width: 52.w,
                    child: Image.asset("assets/save.png")),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.only(left: 28.0.w),
            child: Column(
              children: [
                Text("Arsenal vs Aston Villa\nprediction",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                SizedBox(height: 34.h),
                SizedBox(
                  height: 37,
                  width: 319.w,
                  child: Image.asset(
                    "assets/author.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 29.h),
                Row(
                  children: [
                    Text("A",
                        style: TextStyle(
                            fontSize: 52.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Text(
                          "rsenal will have to grind it out against\nAston Villa if they are to register",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    )
                  ],
                ),
                const ReadMoreText(
                  'League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Arteta\'s side had already surrendered points to Liverpool, Manchester City and ',
                  style: TextStyle(color: Colors.white),
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
