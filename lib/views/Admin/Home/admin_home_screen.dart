part of 'package:flutter_auth/view.dart';

class AdminHomeScreen extends StatefulWidget {

  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF239BD8),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Background(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                    child: Header(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
                    child: Jumbotron(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
                    child: Category(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatefulWidget {
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
            style: Theme.of(context).textTheme.headline1?.copyWith(
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MandatoryDetails(),
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
                              style: Theme.of(context).textTheme.headline1?.copyWith(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context) => ChoiceBasedDetails(),
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
                              style: Theme.of(context).textTheme.headline1?.copyWith(
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