import 'package:flutter/material.dart';
import 'logout.dart';


class  UserInfoScreen extends StatefulWidget {
  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen>
 {
  String? selectedQualification;
     bool isChecked = false;
     String? selectedGender;

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
            padding:  EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image(image: AssetImage('lib/images/abc.png') ),

                   SizedBox(height: 30),

                  
                   Text(
                    "Your Info",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 6),
                   Text(
                    "Step 2 of 5",
                    style: TextStyle(color: Colors.white60),
                  ),

                   SizedBox(height: 30),

                  
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                   SizedBox(height: 4),
                  inputField("John12@gmail.com", Icons.email),

                   SizedBox(height: 15),

                  
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                   SizedBox(height: 4),
                  inputField("Password", Icons.lock,
         
                  ),
                
                 SizedBox(height: 15),

                
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                   SizedBox(height: 4),
                  inputField("DD-mm-yy", Icons.calendar_today),
                    Align(
  alignment: Alignment.centerLeft,
  child: Text(
    'Gender',
    style: TextStyle(color: Colors.white, fontSize: 15),
  ),
),
SizedBox(height: 4),

Column(
  children: [
    RadioListTile<String>(
      title: Text("Male", style: TextStyle(color: Colors.white)),
      value: "Male",
      groupValue: selectedGender,
      activeColor: Colors.deepOrange,
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
    ),
    RadioListTile<String>(
      title: Text("Female", style: TextStyle(color: Colors.white)),
      value: "Female",
      groupValue: selectedGender,
      activeColor: Colors.deepOrange,
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
    ),
    RadioListTile<String>(
      title: Text("Non-binary", style: TextStyle(color: Colors.white)),
      value: "Non-binary",
      groupValue: selectedGender,
      activeColor: Colors.deepOrange,
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
    ),
    RadioListTile<String>(
      title: Text("Prefer not to say", style: TextStyle(color: Colors.white)),
      value: "Prefer not to say",
      groupValue: selectedGender,
      activeColor: Colors.deepOrange,
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
      },
    ),
  ],
),


                   SizedBox(height: 15),

                  
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Qualification',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                   SizedBox(height: 4),
                  Container(
                    height: 50,
                    width: 398,
                    padding:  EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color:  Color(0xff3A1f0f),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        dropdownColor:  Color(0xff3A1f0f),
                        value: selectedQualification,
                        icon:  Icon(Icons.arrow_drop_down,
                            color: Colors.white),
                        hint:  Text("Select",
                            style: TextStyle(color: Colors.white60)),
                      items: [
                           "Graduation",
                        "Postgraduation",
                        ].map((qualification) {
                       return DropdownMenuItem<String>(
                        value: qualification,
                       child: Text(
                            qualification,
                    style: const TextStyle(color: Colors.white),
                      ),
                       );
                       }).toList(),

                        onChanged: (value) {
                          setState(() {
                            selectedQualification = value;
                          });
                        },
                      ),
                    ),
                  ),
                   SizedBox(height: 10),
                    Row(
                    children: [
                  Checkbox(
                        value: isChecked,
                  onChanged: (value) {
                  setState(() {
                  isChecked = value!;
                        });
                    },
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
                   SizedBox(height: 40),

               
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogoutScreen()),
                       );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child:  Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                   SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 
             Widget inputField(String hint, IconData icon) {
                      return Container(
                 decoration: BoxDecoration(
               color:  Color(0xff3A1f0f),
            borderRadius: BorderRadius.circular(100),
            ),
          child: TextField(
          decoration: InputDecoration(
          prefixIcon: Icon(icon, color:  Color.fromARGB(137, 68, 37, 37)),
          hintText: hint,
          hintStyle:  TextStyle(color: Colors.white),
          fillColor: Color(0xff3A1f0f),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
