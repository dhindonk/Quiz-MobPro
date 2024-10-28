import 'package:flutter/material.dart';
import '../../../core/components/buttons.dart';
import '../../home/home.dart';
import '../models/onboarding_model.dart';
import '../widgets/onboarding_content.dart';
import '../widgets/onboarding_indicator.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  final onboardingData = [
    OnboardingModel(
      title: 'Tanpa Google Font',
      desc: 'Ubah kata2 nya klau sudah berhasil pakai Google Fonts ',
    )
  ];

  @override
  Widget build(BuildContext context) {
    void navigate() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
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
            OnboardingContent(
              contents: onboardingData,
              onPageChanged: (index) {
                currentPage = index;
                setState(() {});
              },
            ),
            OnboardingIndicator(
              length: onboardingData.length,
              currentPage: currentPage,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Button.filled(
                onPressed: () {
                  // ada yang hilang
                  currentPage++;
                  setState(() {});
                },
                label: currentPage < onboardingData.length - 1
                    ? 'Lanjut'
                    : 'Masuk',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
