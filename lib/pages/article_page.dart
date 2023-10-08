import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(20),
                          height: 530,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/platypus.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28))),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: SvgPicture.asset(
                                  'assets/images/back_btn.svg',
                                  height: 24,
                                  width: 24,
                                  fit: BoxFit.scaleDown)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                            'CYBER: Big Tech Wants You to Think AI Will Kill Us All',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold))),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                            'A video shot on a phone scans a small bedroom, showing the grisly aftermath of what I was told was a robbery: dry blood smeared across a Macbook Pro, a pair of pliers on an unmade bed, and more blood speckled across the floor and walls. A set of photos show a young man in his underwear, restrained with zip ties on his wrists and a small syringe of what one person claimed was heroin. The boy’s captors threatened to inject him with it unless he handed over his cryptocurrency.',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 18,
                            ))),
                      ],
                    )))));
  }
}
