import 'package:flutter/material.dart';
import '../../../../core/core.dart';
import '../models/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final void Function(int index) onPageChanged;
  final List<OnboardingModel> contents;

  const OnboardingContent({
    super.key,
    required this.onPageChanged,
    required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(onPageChanged: onPageChanged, children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .3,
                // ada yang hilang
              ),
              const SizedBox(height: 20),
              Flexible(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        contents.first.title,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaler.scale(16),
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        contents.first.desc,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaler.scale(14),
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
