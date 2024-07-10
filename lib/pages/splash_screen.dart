// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryshop/pages/tabs.dart';

class MySplashPage extends StatelessWidget {
  const MySplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xffA259FF),
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 63,
                  child: SvgPicture.asset(
                    'assets/icons/logo.svg',
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                Container(
                  height: 584,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 584,
              decoration: const BoxDecoration(
                color: Color(0xffF6F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 64),
                    SvgPicture.asset('assets/icons/box_icon.svg'),
                    const SizedBox(height: 24),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Non-Contact Deliveries',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D0C57),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "When placing an order, select the option \n“Contactless delivery” and the courier will leave \nyour order at the door.",
                        textAlign: TextAlign.center, // Center align text
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9586A8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    ElevatedButton(
                      onPressed: () {
                        _orderNowScreen(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0BCE83),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 136.61,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Order now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _orderNowScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MyTabs()));
  }
}
