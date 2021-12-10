import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Testing/testing_page.dart';

class Mandatory extends StatefulWidget {
  const Mandatory({
    Key key, 
    this.title, 
    this.color, 
    this.press, 
    this.icon
  }) : super(key: key);

  final String title;
  final Color color;
  final Function press;
  final IconData icon;

  @override
  _MandatoryState createState() => _MandatoryState();
}

class _MandatoryState extends State<Mandatory> {
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
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFFFBF43),
                  borderRadius: BorderRadius.circular(20),
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
                      'Pengelola',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
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
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFD34539),
                  borderRadius: BorderRadius.circular(20),
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
                      'Media Sosial',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
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
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF1D9E62),
                  borderRadius: BorderRadius.circular(20),
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
                      'Organizational Belonging',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 12,
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
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
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
                      'Administration',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 12,
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
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF1D9E62),
                  borderRadius: BorderRadius.circular(20),
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
                      'Event',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
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
                    builder: (context) => TestingPage(),
                  ),
                );
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFFFFBF43),
                  borderRadius: BorderRadius.circular(20),
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
                      'Pengembangan Diri',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.button.copyWith(
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                        fontSize: 12,
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
