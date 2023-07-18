import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:paramount_students_task/model/populate_data.dart';
import 'package:paramount_students_task/utils/components/body.dart';

import '../utils/constatnt/appimages.dart';

final schools = PopulateData.getData();

class Germany extends StatelessWidget {
  const Germany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.img1),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                  child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(0),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          child: Center(child: Image.asset(AppImages.img2)),
                        ),
                        Spacer(),
                        Container(
                            width: 85,
                            height: 40,
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(AppImages.filter),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Filter',
                                  style: TextStyle(
                                    color: Color(0xFF191C1C),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    // height: 20,
                                    letterSpacing: -0.50,
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -28,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        width: 165,
                        height: 56,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(AppImages.gm),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Germany',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF191C1C),
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  // height: 20,
                                  letterSpacing: -0.50,
                                ),
                              )
                            ]),
                      ),
                    ),
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Universities List',
                      style: TextStyle(
                        color: Color(0xFF191C1C),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0x7F191C1C),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: schools.length,
                      itemBuilder: (_, i) {
                        final school = schools[i];
                        return Body(
                          mainImg: school.mainImg,
                          logo: school.logo,
                          locatn: school.locatn,
                          name: school.name,
                          bachelorfig: school.bachelorfig,
                          phdfig: school.phdfig,
                          price: school.price,
                          diplomafig: school.diplomafig,
                          mastersfig: school.mastersfig,
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
