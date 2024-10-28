import 'package:flutter/material.dart';
import '../../../core/components/buttons.dart'; 

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  final onboardingData = [
    // isi data disini
  ];

  @override
  Widget build(BuildContext context) {
    void navigate() {
      // ada yang hilang
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                      // child: Image.asset(
                      //   'assets/...',
                      //   width: 60,
                      //   height: 60,
                      // ),
                      ),
                ),
                //  ada yg hilang
                Text(
                  'MEMBERS\nSPACE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            // OnboardingContent(
            //   // ada yang hilang

            //   onPageChanged: (index) {
            //     currentPage = index;
            //     setState(() {});
            //   },
            //    // ada yang hilang
            // ),

            // Indikator hilang
            
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Button.filled(
                onPressed: () {
                  // ada yang hilang
                  currentPage++;
                  setState(() {});
                },
                label: 'Lanjut', // ada yg hilang tpi apa y
              ),
            ),
          ],
        ),
      ),
    );
  }
}
