import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_job/pages/home_page.dart';
import 'package:future_job/pages/signin_page.dart';
import 'package:future_job/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isImageUploaded = false;
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget profileImageWidget() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isImageUploaded = !isImageUploaded;
            });
          },
          child: Column(
            children: [
              Image.asset(
                isImageUploaded
                    ? 'assets/image_profile.png'
                    : 'assets/icon_upload.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 24.0, right: 24.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Sign Up',
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
            profileImageWidget(),
            SizedBox(
              height: 40,
            ),
            Text(
              'Full Name',
              style: titleTextStyle,
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
              height: 8,
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
                      color:
                          isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56)),
                ),
                hintText: '',
              ),
              style: TextStyle(
                  color: isEmailValid ? Color(0xff4141A4) : Color(0xffFD4F56)),
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
              height: 20,
            ),
            Text(
              'Your Goal',
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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Sign Up',
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
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text(
                  'Back to Sign In',
                  style: GoogleFonts.poppins(
                      color: Color(0xff8385C4),
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ]),
        ),
      )),
    );
  }
}
