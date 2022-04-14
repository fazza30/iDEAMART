// ignore_for_file: non_constant_identifier_names

part of 'package:flutter_auth/view.dart';

class HomePage extends StatelessWidget {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Background(),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 0 , 50, 0),
                      child: Header(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
                      child: Jumbotron(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
                      child: Container(
                        width: double.infinity,
                        height: 550,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Mandatory(context),
                            ChoiceBased(context),
                            // Padding(
                            //   padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            //   child: MyProgress(),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ChoiceBased(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Text(
            'Choice Based',
            style: TextStyle(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: TextStyle(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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

  Widget Mandatory(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Text(
            'Mandatory',
            style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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
                        MaterialPageRoute(
                          builder: (context) => ResultScreen()
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
                                style: Theme.of(context).textTheme.headline1?.copyWith(
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

  Widget MyProgress(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Progress Saya',
          style: Theme.of(context).textTheme.headline1?.copyWith(
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
                                  style: Theme.of(context).textTheme.headline1?.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  '1 dari 4 pertanyaan',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                                    style: Theme.of(context).textTheme.headline1?.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    '1 dari 4 pertanyaan',
                                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
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