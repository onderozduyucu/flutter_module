import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: ColorName.yellowOcher,
                  child: const Text(LocaleKeys.welcome).tr(),
                ),
                Container(
                  color: ColorName.gray70,
                  child: const Text(LocaleKeys.example_information).tr(),
                )
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(children: [
              Assets.svg.innovation.svg(
                height: 340,
                package: 'gen',
              ),
              Assets.image.ghost.image(
                height: 150,
                package: 'gen',
              ),
              Assets.lottie.animation.lottie(
                height: 150,
                package: 'gen',
              ),
            ]),
          )
        ],
      ),
    );
  }
}
