// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F5F5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 12,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2D0C57)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 48),
              ],
            ),
          ),
        ),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(width: 35),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CHANGE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xff7203FF),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/credit-card.svg'),
                    SizedBox(width: 25),
                    Text(
                      '**** **** **** 4747',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff9586A8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    width: 228,
                    child: Text(
                      'Delivery address',
                      style: TextStyle(
                        color: Color(0xff2D0C57),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 35),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CHANGE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xff7203FF),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/home.svg'),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Text(
                          'Alexandra Smith \nCesu 31 k-2 5.st, SIA Chili \nRiga \nLV–1012 \nLatvia',
                          style: TextStyle(
                            color: Color(0xff9586A8),
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 228,
                    child: Text(
                      'Delivery options',
                      style: TextStyle(
                        color: Color(0xff2D0C57),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 35),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CHANGE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xff7203FF),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/walking.svg'),
                    SizedBox(width: 25),
                    Text(
                      'I’ll pick it up myself',
                      style: TextStyle(
                        color: Color(0xff9586A8),
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/bike.svg'),
                    SizedBox(width: 25),
                    Text(
                      'By courier',
                      style: TextStyle(
                        color: Color(0xff9586A8),
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/Drone.svg'),
                    SizedBox(width: 25),
                    Text(
                      'By Drone',
                      style: TextStyle(
                        color: Color(0xff7203FF),
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Non-contact-delivery',
                    style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  FlutterSwitch(
                    value: _switchValue,
                    activeColor: Color(0xffE2CBFF),
                    onToggle: (bool value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                    width: 73,
                    height: 30,
                    valueFontSize: 14,
                    toggleSize: 26,
                    activeText: 'Yes',
                    inactiveText: 'No',
                    activeTextColor: Color(0xff6C0EE4),
                    showOnOff: true,
                    activeTextFontWeight: FontWeight.w500,
                    inactiveTextFontWeight: FontWeight.w500,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTitleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 12,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2D0C57)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 48), // Placeholder for alignment
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Content goes here'),
      ),
    );
  }
}
