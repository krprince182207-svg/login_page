import 'package:flutter/material.dart';
import 'Signuppage.dart';
import 'logout.dart';

void main() {
  runApp( MyApp());
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
        padding: EdgeInsetsGeometry.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Image(image: AssetImage('lib/images/Group.png')
              ),
               SizedBox(height: 40,),
              RichText(text: TextSpan( 
                  style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),
                  children: [
                    TextSpan(text: 'Run', style: TextStyle(color: Colors.white) ),
                    
                    TextSpan(text: 'mate', style: TextStyle(color: Colors.deepOrange) ),
                   ]
                )
                ),
                SizedBox(height: 20,),
                Text("Welcome Back!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,

                ),
                ),
                SizedBox(height:6),
                Text(
                  "Enter valid user name & password \nto continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height:40),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Email',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 6),
              Container(
                height: 62,
                width: 398,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3A1f0f),
                ),
                 child: Center(
                   child: TextField(
                               decoration: InputDecoration(
                                 hintText: 'Email Address',
                                 fillColor: Color(0xff3A1f0f),
                                 filled: true,
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30),
                   borderSide: BorderSide.none,
                                 )
                               ),
                             ),
                 ),),
           SizedBox(height:10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Password',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 6),
               Container(
                height: 62,
                width: 398,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3A1f0f),
                ),
                 child: Center(
                   child: TextField(
                    obscureText: true,
                               decoration: InputDecoration(
                                 hintText: 'Enter Password',
                                 fillColor: Color(0xff3A1f0f),
                                 filled: true,
                                 border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
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
               
                 SizedBox(height: 10),
                SizedBox(
                  width: 398,
                  height: 68,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          SizedBox(height:15),
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
                SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                          width: 185,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(30),),
                                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/google.png'),
                        SizedBox(width: 5,),
                        Text('Google',
                        style: TextStyle(
                          color: Colors.white,fontSize: 16,
                          fontWeight: FontWeight.w700,
                    
                        ),)
                        
                      ],
                    ),),
                    Container(
                      width: 185,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                        
                        ),
                              child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/apple.png',width: 24),
                    SizedBox(width: 5,),
                    Text('Apple',
                    style: TextStyle(
                      color: Colors.white,fontSize: 16,
                      fontWeight: FontWeight.w700,
                      
                
                    ),)
                    
                  ],
                )
                      )
                  ],
                ),
                SizedBox(height: 50),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
             "Haven’t any account?",
          style: TextStyle(color: Colors.white70, fontSize: 14),
         ),
           SizedBox(width: 6),
         TextButton(onPressed: (){
              print('signup');
              Navigator.push(context, MaterialPageRoute(builder: (context) =>SignupScreen()));
         }, 
                      
               child:  Text(
                      "Sign up",
               style: TextStyle(
               color: Colors.deepOrange,
                fontSize: 14,
               fontWeight: FontWeight.bold,
               ),)
            ),
         
       ],
     ),     
            ]
            
          ),
          )),
      ),
    );
  }
}
