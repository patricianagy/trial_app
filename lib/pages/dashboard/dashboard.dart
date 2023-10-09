import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_app/loading_states.dart';
import 'package:trial_app/pages/article_details_page.dart';
import 'package:trial_app/pages/dashboard/dashboard_viewmodel.dart';
import 'package:trial_app/widgets/article_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final viewProvider =
      AutoDisposeStateNotifierProvider<DashboardViewModel, LoadingStates>(
    (ref) => DashboardViewModel(LoadingStates.loading, ref),
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final viewModel = ref.read(viewProvider.notifier);
      final state = ref.watch(viewProvider);

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
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 20),
              child: Text('Legfrissebb',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold))),
            ),
            const Padding(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: Article(
                    picture: 'assets/images/placeholder.png',
                    title:
                        'CYBER: Big Tech Wants You to Think AI Will Kill Us All',
                    readingTime: '3',
                    id: 0)),
          ],
        ),
      ));
    });
  }
}
