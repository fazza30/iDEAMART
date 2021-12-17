import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Testing/testing_page.dart';
import 'package:page_transition/page_transition.dart';

class ChoiceBased extends StatefulWidget {
  const ChoiceBased({Key key}) : super(key: key);

  @override
  _ChoiceBasedState createState() => _ChoiceBasedState();
}

class _ChoiceBasedState extends State<ChoiceBased> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Text(
            'Choice Based',
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
                  // Servis Data
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
                        width: 155,
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
                                Icons.work_outline_rounded,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Servis Data',
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
                  // End of Servis Data

                  // Media Partner
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
                        width: 155,
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
                                Icons.live_tv,
                                color: Colors.white,
                                size: 32,
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              Text(
                                'Media Partner',
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
                  // End of Media Partner
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}