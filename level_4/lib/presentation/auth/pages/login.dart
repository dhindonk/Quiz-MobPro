import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/components/buttons.dart';
import '../../../core/core.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 200,
                width: fullWidth(context),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                ),
              ),
              // teliti hal2 kecil banyak yg hilang disini
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 40,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
                width: 100,
                height: 100,
                child: Image.asset(
                  Assets.logo.logoWhitePng.path,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const SpaceHeight(12),
                Text(
                  'Cerita nya Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const SpaceHeight(30),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black.withOpacity(0.8),
                        ),
                      ),
                      const SpaceHeight(5),
                      // input email hilang
                      // ada yg hilang
                      Text(
                        'Passworddddddddddddddddddddddddddd',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black.withOpacity(0.8),
                        ),
                      ),
                      const SpaceHeight(5),
                      TextFormField(
                          //password
                          )
                    ],
                  ),
                ),
                const SpaceHeight(50),
                Column(children: [
                  Button.filled(
                    onPressed: () {},
                    label: 'Login',
                    color: AppColors.red,
                  )
                ]),
                const SpaceHeight(25),
                Container(
                  height: 2,
                  width: fullWidth(context) / 2,
                  color: AppColors.line,
                ),
                const SpaceHeight(40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
