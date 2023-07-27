import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_score_ui/Screens/SplashScreen2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Stack(
        children: [
          SizedBox(height: double.infinity, width: double.infinity),
          SizedBox(
            height: 500.h,
            width: 375.w,
            child: Image.asset("assets/p1.png"),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              height: 500.h,
              width: 375.w,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 360,
            child: Container(
              width: 375.w,
              height: 499.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.sp),
                      topRight: Radius.circular(30.sp)),
                  color: const Color(0xff222232)),
              child: Padding(
                padding: EdgeInsets.only(top: 30.h, left: 24.w, right: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    SizedBox(height: 30.h),
                    Container(
                      width: 327,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xff181829),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color(0xff65656B)),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xff65656B),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 327,
                      height: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xff181829),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Color(0xff65656B)),
                          prefixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xff65656B),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Color(0xff65656B),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 16.w,
                              height: 16,
                              child: Checkbox(

                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                },
                                value: isChecked,
                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(left: 8.0.w),
                              child: Text(
                                  "Remember me",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,color:const Color(0xff65656B)
                                  )
                              ),
                            )
                          ],
                        ),
                        Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,color: Colors.white
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 42.h),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const SplashScreen2()));
                      },
                      child: Container(
                        width: 327.w,
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
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Don’t have account? ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,color:const Color(0xffC4C4C4)
                            )
                        ),
                        Text(
                            "Sign UP ",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,color:const Color(0xff246BFD)
                            )
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
