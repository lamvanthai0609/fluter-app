import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/components/element/skeleton_loader.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStarted createState() => _GetStarted();
}

class _GetStarted extends State<GetStarted> {
  bool isLoad = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoad = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //double remainingHeight = MediaQuery.of(context).size.height - 450;

    return Scaffold(
      body: Stack(
        children: [imageBg(), cardLayout(context, isLoad)],
      ),
    );
  }

  Widget imageBg() {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(imageAsset('bgMain.png'), fit: BoxFit.cover),
    );
  }

  Widget cardLayout(BuildContext context, bool isLoad) {
    return ClipRect(
      child: Transform.translate(
        offset: const Offset(0, 450),
        child: Container(
          width: double.infinity,
          //height: remainingHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0),
                Colors.black,
              ],
              stops: [0, 0.1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(24),
            child: isLoad ? contentLoader() : content(context),
          ),
        ),
      ),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Fall in Love with Coffee in Blissful Delight!',
          style: TextStyle(
            color: ColorMain.white,
            fontSize: 32,
            fontFamily: 'Sora',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
          style: TextStyle(
              fontSize: 14, fontFamily: 'Sora', color: ColorMain.third[200]),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: Button(
              label: 'Get Started',
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/home')),
        )
      ],
    );
  }

  Widget contentLoader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SkeletonLoader(height: 20, width: double.infinity),
        const SizedBox(height: 10),
        const SkeletonLoader(height: 20, width: double.infinity),
        const SizedBox(height: 10),
        const SkeletonLoader(height: 20, width: 100),
        const SizedBox(height: 10),
        const SkeletonLoader(height: 20, width: 60),
        const SizedBox(height: 10),
        const SkeletonLoader(height: 20, width: 200),
        const SizedBox(height: 10),
        const SkeletonLoader(
          height: 10,
          width: double.infinity,
        ),
        const SizedBox(height: 10),
        const SkeletonLoader(
          height: 10,
          width: 120,
        ),
        const SizedBox(height: 32),
        SizedBox(
          width: double.infinity,
          child: Button(
              child: const SkeletonLoader(
                height: 10,
                width: 120,
              ),
              onPressed: () => {}),
        )
      ],
    );
  }
}
