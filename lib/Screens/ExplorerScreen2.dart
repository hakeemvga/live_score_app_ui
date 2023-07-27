import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExplorerScreen2 extends StatefulWidget {
  const ExplorerScreen2({Key? key}) : super(key: key);

  @override
  State<ExplorerScreen2> createState() => _ExplorerScreen2State();
}

class _ExplorerScreen2State extends State<ExplorerScreen2> {
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
              Row(
                children: [
                  Container(
                    width: 256,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.sp),
                      color: const Color(0xff222232),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search your team ...",
                        hintStyle: TextStyle(color: Color(0xff65656B)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff65656B),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,color: Colors.white
                      )
                  )
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                  height: 52,
                  width: 350,
                  child: Image.asset("assets/1.png",fit: BoxFit.cover,)),
              SizedBox(height: 28.h),
              InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => const ExplorerScreen2()));
                  },
                  child: SizedBox(
                      height: 47,
                      width: 346,
                      child: Image.asset("assets/2.png"))),
              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/3.png")),
              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/4.png")),
              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/5.png")),
              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/6.png")),

              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/7.png")),

              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/8.png")),

              SizedBox(height: 28.h),
              SizedBox(
                  height: 47,
                  width: 346,
                  child: Image.asset("assets/9.png")),




            ],
          ),
        ),
      ),
    );
  }
}
