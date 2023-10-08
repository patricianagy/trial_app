import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_app/pages/article_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 1.0,
        shadowColor: const Color(0xff000029),
        leading: Padding(
          padding: const EdgeInsets.all(17),
          child: SvgPicture.asset(
            'assets/images/p_logo.svg',
          ),
        ),
        centerTitle: true,
        title: Text('Blog',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset('assets/images/menu.svg',
                height: 10, width: 15, fit: BoxFit.scaleDown),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
            child: Text('Legfrissebb',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold))),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ArticlePage(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/platypus.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 30,
                            width: 75,
                            decoration: const BoxDecoration(
                                color: Color(0xffE9291B),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/timer.svg',
                                    height: 10,
                                    width: 9,
                                    fit: BoxFit.scaleDown),
                                const SizedBox(width: 4),
                                Text('3 perc',
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
                    Text(
                        'CYBER: Big Tech Wants You to Think AI Will Kill Us All',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}
