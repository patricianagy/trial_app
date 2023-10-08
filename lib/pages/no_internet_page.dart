import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetPage extends StatefulWidget {
  const NoInternetPage({super.key});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: SvgPicture.asset(
                                'assets/images/back_btn.svg',
                                height: 24,
                                width: 24,
                                fit: BoxFit.scaleDown))),
                    const SizedBox(
                      height: 90,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Column(children: [
                          SvgPicture.asset('assets/images/magnifier.svg',
                              height: 140, width: 140, fit: BoxFit.scaleDown),
                          const SizedBox(height: 60),
                          Text('Valami hiba történt!',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          const SizedBox(height: 16),
                          Text(
                              'Kérjük, győződj meg róla, hogy az internetkapcsolattal minden rendben van-e.',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                              ))),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/images/reload.svg',
                                  height: 18, width: 22, fit: BoxFit.scaleDown),
                              label: Text('Újratöltés',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 20, color: Colors.white))),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffE9291B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 12))),
                        ]))
                  ],
                ))));
  }
}
