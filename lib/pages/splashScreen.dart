import 'dart:html';
import 'package:allwidgets/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void changeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const HomePage());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    //changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/a.jpg'), fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ZoomIn(
                delay: const Duration(microseconds: 300),
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*0.6,
                  width: MediaQuery.of(context).size.width*0.95,
                  child: Image.asset('assets/icons/cc.png'),
                ),
              ),
              const SizedBox(height: 20,),
              BounceInDown(
                delay: const Duration(microseconds: 600),
                child: Container(
                  margin:const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInLeft(
                        delay: const Duration(microseconds: 900),
                        child: const Center(
                          child: Text(
                            'Learn Flutter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      FadeInRight(
                        delay: const Duration(microseconds: 1200),
                        child: const Center(
                          child: Text(
                            'Don\'t Forget Your Love One',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
