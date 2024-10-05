import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});



  @override
  Widget build(BuildContext context) {

    double remainingHeight = MediaQuery.of(context).size.height - 450;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(imageAsset('bgMain.png'), fit: BoxFit.cover),
          ),
          Transform.translate(
            offset: const Offset(0, 450),
            child: Container(
              width: double.infinity,
              height: remainingHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black,
                  ],
                  stops: [0, 0.2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                children: [
                  const Text('Fall in Love with Coffee in Blissful Delight!', style: TextStyle(
                    color: ColorMain.white,
                    fontSize: 32,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.center,),
                  Text('Welcome to our cozy coffee corner, where every cup is a delightful for you.', style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Sora',
                    color: ColorMain.third[200]
                  ),textAlign: TextAlign.center,),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorMain.primary,
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                        elevation: 100
                      ),
                      onPressed: () {
                        print('click');
                        //Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorMain.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}
