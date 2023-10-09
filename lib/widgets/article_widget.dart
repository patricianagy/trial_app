import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_app/pages/article_details_page.dart';

class Article extends StatelessWidget {
  final String picture;
  final String title;
  final String readingTime;
  final int id;

  const Article({
    Key? key,
    required this.picture,
    required this.title,
    required this.readingTime,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ArticleDetailsPage(id: id),
          ),
        );
      },
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(picture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 30,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Color(0xffE9291B),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/timer.svg',
                          height: 10, width: 9, fit: BoxFit.scaleDown),
                      const SizedBox(width: 4),
                      Text('$readingTime perc',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12, color: Colors.white)))
                    ],
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Text(title,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
