import 'package:flutter/material.dart';
import 'logout.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32,),
              Image(image: AssetImage('lib/images/Group.png')
              ),
               SizedBox(height: 8,),
              RichText(text: TextSpan(
                  style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),
                  children: [
                    TextSpan(text: 'Run', style: TextStyle(color: Colors.white) ),
                    
                    TextSpan(text: 'mate', style: TextStyle(color: Colors.deepOrange) ),
                   ]
                )
                ),
                SizedBox(height: 10,),
                Text("Start your Journey!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,

                ),
                ),
                SizedBox(height:4),
                Text(
                  "Enter your Register information",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height:11),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Full Name',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 4),
               Container(
                 width: 398,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Color(0xff3A1f0f),
                        borderRadius: BorderRadius.circular(30),
                        
                        ),
                 child: Center(
                   child: TextField(
                               decoration: InputDecoration(
                                 hintText: 'Enter full name',
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
                SizedBox(height:4),
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Email',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 4),
               Container(
                 width: 398,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Color(0xff3A1f0f),
                        borderRadius: BorderRadius.circular(30),
                        
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
                 ),
               ),
           SizedBox(height:4),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Password',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(height: 4),
               Container(
                 width: 398,
                      height: 68,
                      decoration: BoxDecoration(
                        color: Color(0xff3A1f0f),
                        borderRadius: BorderRadius.circular(30),
                        
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
          SizedBox(height: 10),
                  Row(
                  children: [
                 Checkbox(
                   value: false,
                 onChanged: (value) {},
            side: BorderSide(color: Colors.white), 
               checkColor: Colors.deepOrange,
               activeColor: Colors.white,
                    ),
               Expanded(
                        child: RichText(
                             text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      children: [
                     TextSpan(text: "I agree to the ",
                         style: TextStyle(
                        color: Colors.white30,
                       fontWeight: FontWeight.bold,
                        
                          )
                         ),
                       TextSpan(
                     text: "Terms of Services",
                      style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                         
                          ),
                       ),
                  ],
               ),
            ),
          ),
         ],
         ),
          SizedBox(height: 10),
                SizedBox(
                  width: 398,
                  height: 57,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                       print('Register');
              Navigator.push(context, MaterialPageRoute(builder: (context) =>LogoutScreen()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
          SizedBox(height:10),
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
                SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      
                          width: 115,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(30),),
                                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/google.png'),
                        SizedBox(width: 2,),
                        Text('Google',
                        style: TextStyle(
                          color: Colors.white,fontSize: 16,
                          fontWeight: FontWeight.w700,
                    
                        ),)
                        
                      ],
                    ),),
                     Container(
                      width: 115,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                        
                        ),
                              child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/strava.png',),
                    SizedBox(width: 2,),
                    Text('Strava',
                    style: TextStyle(
                      color: Colors.white,fontSize: 16,
                      fontWeight: FontWeight.w700,
                      
                
                    ),)
                    
                  ],
                )
                      ),
                    Container(
                      width: 115,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(30),
                        
                        ),
                              child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/apple.png',),
                    SizedBox(width: 2,),
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
                SizedBox(height: 40),

            Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
             "Already have an account?",
          style: TextStyle(color: Colors.white70, fontSize: 14),
         ),
           SizedBox(width: 6),
          GestureDetector(
               onTap: () {
                      
                      },
               child: Text(
                      "Sign in",
               style: TextStyle(
               color: Colors.deepOrange,
                fontSize: 14,
               fontWeight: FontWeight.bold,
               ),
            ),
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
