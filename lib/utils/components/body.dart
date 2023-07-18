import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paramount_students_task/utils/constatnt/appimages.dart';

class Body extends StatelessWidget {
  String mainImg;
  String logo;
  String name;
  String locatn;
  String bachelorfig;
  String mastersfig;
  String phdfig;
  String diplomafig;
  String price;
  Body(
      {super.key,
      required this.mainImg,
      required this.logo,
      required this.name,
      required this.locatn,
      required this.bachelorfig,
      required this.mastersfig,
      required this.phdfig,
      required this.diplomafig,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 158,

          // clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x28000000),
                blurRadius: 16,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  // height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(mainImg),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fitWidth),
                  ),
                  child: Stack(children: [
                    Positioned(
                      bottom: 0,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10.0,
                            sigmaY: 10.0,
                          ),
                          child: Container(
                            width: 130,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 9,
                      right: 10,
                      left: 10,
                      child: Center(
                        child: Text(
                          'View Virtual Tour',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.40,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(logo),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                              color: Color(0xFF191C1C),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.12,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(AppImages.tag)
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 28,
                          ),
                          Text(
                            locatn,
                            style: const TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
// height: 12,
                              letterSpacing: -0.10,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'See in map',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 9,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              letterSpacing: -0.09,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 28,
                          ),
                          Text(
                            'Public university',
                            style: TextStyle(
                              color: Color(0xFF191C1C),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.10,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.25,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF737373),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                bachelorfig,
                                style: const TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Bachelor',
                                style: TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 8,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                mastersfig,
                                style: const TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Masters',
                                style: TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 8,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                phdfig,
                                style: const TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'PHD',
                                style: TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 8,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                diplomafig,
                                style: const TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'Diploma',
                                style: TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 8,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.25,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFF737373),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            const Text(
                              'Average Cost per year',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF191C1C),
                                fontSize: 8,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                // height: 16,
                                letterSpacing: -0.08,
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Expanded(
                                  child: Text(
                                    '\$$price',
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Color(0xFF191C1C),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.80,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 99,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFFF1C111),
                                      ),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
