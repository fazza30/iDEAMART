import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Quiz/quiz_screen.dart';

class ChoiceBased extends StatefulWidget {
  const ChoiceBased({Key key}) : super(key: key);

  @override
  _ChoiceBasedState createState() => _ChoiceBasedState();
}

class _ChoiceBasedState extends State<ChoiceBased> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
            childAspectRatio: 1.5,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFFFBF43),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.lightbulb_outline_sharp,
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      'Data Services',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFD34539),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.lightbulb_outline_sharp,
                      color: Colors.white,
                      size: 60,
                    ),
                    Text(
                      'Media Partner',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
