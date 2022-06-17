import 'package:flutter/material.dart';
import 'package:future_job/theme.dart';
import 'package:future_job/widgets/job_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
            top: 30.0, left: 24.0, right: 24.0, bottom: 25.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: titleTextStyle,
                ),
                Text(
                  'Jason Powell',
                  style: subTitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/image_profile.png',
              width: 58,
              height: 58,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hot Categories',
                style: GoogleFonts.poppins(
                  color: Color(0xff272c2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  JobCard(
                      text: 'Web Developer',
                      imageUrl: 'assets/image_category1.png'),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/image_category2.png'),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                      text: 'App Designer',
                      imageUrl: 'assets/image_category3.png'),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                      text: 'Content Writer',
                      imageUrl: 'assets/image_category4.png'),
                  SizedBox(
                    width: 16,
                  ),
                  JobCard(
                      text: 'Video Grapher',
                      imageUrl: 'assets/image_category5.png'),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
