import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Testing/testing_page.dart';
import 'package:page_transition/page_transition.dart';

class Mandatory extends StatefulWidget {
  const Mandatory({Key key}) : super(key: key);

  @override
  _MandatoryState createState() => _MandatoryState();
}

class _MandatoryState extends State<Mandatory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Text(
            'Mandatory',
            style: Theme.of(context).textTheme.headline1.copyWith(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Pengelola
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFFDC043),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.settings_outlined,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Pengelola',
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Pengelola

                  // Media Sosial
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFD34539),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.people_alt_outlined,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Media Sosial',
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Media Sosial

                  // Milik Perusahaan
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF1D9F63),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.domain,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Milik Perusahaan',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Milik Perusahaan
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Administrasi
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF239BD8),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.credit_card_rounded,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Administrasi',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Administrasi

                  // Event
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF1E9E65),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.local_play,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Event',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Event

                  // Pengembangan Diri
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                          reverseDuration: Duration(milliseconds: 300),
                          child: TestingPage(),
                        ),
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFBF43),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.person_add_sharp,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Pengembangan Diri',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // End of Pengembangan Diri
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}