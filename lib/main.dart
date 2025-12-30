import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Signuppage.dart';
import 'logout.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(428, 926),  // Base design dimensions
    builder: (context, child) => MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
         body: Container(
          
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff3A1f0f),
              Colors.black,
              
              
               ],
          ),
        ),
       child: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(16),
         
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h,),
                Image(image: AssetImage('lib/images/Group.png')
                ),
                 SizedBox(height: 40.h,),
                RichText(text: TextSpan( 
                    style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),
                    children: [
                      TextSpan(text: 'Run', style: TextStyle(color: Colors.white) ),
                      
                      TextSpan(text: 'mate', style: TextStyle(color: Colors.deepOrange) ),
                     ]
                  )
                  ),
                  SizedBox(height: 20.h,),
                  Text("Welcome Back!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
            
                  ),
                  ),
                  SizedBox(height:6.h),
                  Text(
                    "Enter valid user name & password \nto continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height:40.h),
                    Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(height: 6.h),
                Container(
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff3A1f0f),
                  ),
                   child: Center(
                     child: TextField(
                                 decoration: InputDecoration(
                                   prefixIcon:Icon(Icons.email,) ,
                                   hintText: 'Email Address',
                                   fillColor: Color(0xff3A1f0f),
                                   filled: true,
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(100),
                     borderSide: BorderSide.none,
                                   )
                                 ),
                               ),
                   ),),
             SizedBox(height:10.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(height: 6.h),
                 Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff3A1f0f),
                  ),
                   child: Center(
                     child: TextField(
                      obscureText: true,
                                 decoration: InputDecoration(
                                    prefixIcon:Icon(Icons.lock,) ,
                                   hintText: 'Enter Password',
                                   suffixIcon:Icon(Icons.visibility_off,) ,
                                   fillColor: Color(0xff3A1f0f),
                                   filled: true,
                                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                       borderSide: BorderSide.none,
                                   )
                                 ),
                               ),
                   ),
                 ),
                 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.deepOrange, fontSize: 12),
                          ),
                        ),
                ],
              ),
                 
                   SizedBox(height: 10.h),
                  SizedBox(
                   width: 398,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
            SizedBox(height:15.h),
             Row(
                    children:  [
                      Expanded(
                        child: Divider(color: Colors.white, thickness: .5),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("or", style: TextStyle(color: Colors.white)),
                      ),
                      Expanded(
                        child: Divider(color: Colors.white, thickness: .5),
                      ),
                    ],
                  ), 
                  SizedBox(height: 15.h,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          
                              width: 160.w,
                              height: 57.h,
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(100),),
                                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('lib/images/google.png'),
                            SizedBox(width: 5.w,),
                            Text('Google',
                            style: TextStyle(
                              color: Colors.white,fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                        
                            ),)
                            
                          ],
                        ),),
                      ),
                      SizedBox(width: 6.w,),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(100),
                            
                            ),
                                  child:Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                        Image.asset('lib/images/apple.png',width: 24.w),
                        SizedBox(width: 5.w,),
                        Text('Apple',
                        style: TextStyle(
                          color: Colors.white,fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          
                                          
                        ),)
                        
                                            ],
                                          )
                          ),
                      )
                    ],
                  ),
                  SizedBox(height: 50.h),
            
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
               "Haven’t any account?",
            style: TextStyle(color: Colors.white70, fontSize: 14.sp),
                     ),
             SizedBox(width: 6.w),
                     TextButton(onPressed: (){
                print('signup');
                Navigator.push(context, MaterialPageRoute(builder: (context) =>SignupScreen()));
                     }, 
                        
                 child:  Text(
                        "Sign up",
                 style: TextStyle(
                 color: Colors.deepOrange,
                  fontSize: 14.sp,
                 fontWeight: FontWeight.bold,
                 ),)
              ),
                     
                   ],
                 ),     
              ]
              
            ),
          ),
          )),
      ),
    );
  }
}
