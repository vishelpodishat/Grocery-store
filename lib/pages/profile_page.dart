// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController firstController = TextEditingController(text: '');
  TextEditingController secondController = TextEditingController(text: '');

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Container(
            width: 6.0,
            height: 12.0,
            child: const Icon(Icons.arrow_back_ios, size: 12.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 36),
                child: Text(
                  'Credit / Debit card',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xff2D0C57),
                  ),
                ),
              ),
              SizedBox(height: 21),
              Image.asset(
                'assets/images/card.png',
              ),
              SvgPicture.asset('assets/icons/photo.svg'),
              SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Name on card',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff9586A8)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Write your name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xffD9D0E3),
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Card number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff9586A8)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: '(XXXX)-(XXXX)-(XXXX)-(XXXX)',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.65, right: 16.65, top: 15, bottom: 15),
                    child: SvgPicture.asset('assets/icons/mastercard.svg'),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xffD9D0E3),
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Expiry date',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff9586A8)),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'XX/XX',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffD9D0E3),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 22),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'CVC',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff9586A8)),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'XXX',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 17.33,
                                  right: 17.33,
                                  top: 9.33,
                                  bottom: 9.33),
                              child: SvgPicture.asset('assets/icons/cvc.svg'),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Color(0xffD9D0E3),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 55),
              ElevatedButton(
                onPressed: () {},
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
    );
  }
}
