import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/Details/choice_based_details.dart';
import 'package:flutter_auth/Screens/Admin/Details/mandatory_details.dart';
import 'package:page_transition/page_transition.dart';

class Category extends StatefulWidget {
  const Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kategori',
            style: Theme.of(context).textTheme.headline1.copyWith(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: MandatoryDetails(),
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
                      width: 125,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFBF43),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Colors.white,
                              size: 32,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Text(
                              'Mandatory',
                              style: Theme.of(context).textTheme.headline1.copyWith(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 300),
                        reverseDuration: Duration(milliseconds: 300),
                        child: ChoiceBasedDetails(),
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
                      width: 125,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color(0xFFD34539),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.article_outlined,
                              color: Colors.white,
                              size: 32,
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.white,
                            ),
                            Text(
                              'Choice Based',
                              style: Theme.of(context).textTheme.headline1.copyWith(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 10,
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
        ],
      ),
    );
  }
}