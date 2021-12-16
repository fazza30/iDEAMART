import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProgress extends StatefulWidget {
  const MyProgress({Key key}) : super(key: key);

  @override
  _MyProgressState createState() => _MyProgressState();
}

class _MyProgressState extends State<MyProgress> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Progress Saya',
          style: Theme.of(context).textTheme.headline1.copyWith(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 210,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: SvgPicture.asset(
                              'assets/icons/strongly-agree.svg',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Survei Pengelola',
                                  style: Theme.of(context).textTheme.headline1.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  '1 dari 4 pertanyaan',
                                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: Color(0xFFC4C4C4),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 210,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: SvgPicture.asset(
                                'assets/icons/agree.svg',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 5, 0, 5),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Survei Pengelola',
                                    style: Theme.of(context).textTheme.headline1.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    '1 dari 4 pertanyaan',
                                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEEEEEE),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                              color: Color(0xFFC4C4C4),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}