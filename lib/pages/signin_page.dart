import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:future_job/pages/signup_page.dart';
import 'package:future_job/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Build Your Career',
                  style: subTitleTextStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset(
                    'assets/image_sign_in.png',
                    width: 262,
                    height: 240,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Email Address',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: emailController,
                  onChanged: (text) => (setState(
                      () => isEmailValid = EmailValidator.validate(text))),
                  decoration: InputDecoration(
                    fillColor: Color(0xffF1F0F5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                          color: isEmailValid
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56)),
                    ),
                    hintText: '',
                  ),
                  style: TextStyle(
                      color: isEmailValid 
                      ? Color(0xff4141A4) 
                      : Color(0xffFD4F56)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Password',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffF1F0F5),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4141A4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.poppins(
                          color: Color(0xff8385C4),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
