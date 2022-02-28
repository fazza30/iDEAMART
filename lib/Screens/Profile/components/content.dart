import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  TextEditingController textController6;
  bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Halo, <Nama Pengguna>',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nama Depan',
                style: Theme.of(context).textTheme.titleMedium.copyWith(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
              ),
              TextFormField(
                controller: textController1,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis : John',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Nama Belakang',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                ),
              ),
              TextFormField(
                controller: textController2,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis : Doe',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'No. Telepon',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                ),
              ),
              TextFormField(
                controller: textController3,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis : 081234567890',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                keyboardType: TextInputType.phone,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Email',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                ),
              ),
              TextFormField(
                controller: textController4,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis : john.doe19@yourmail.com',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Username',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                ),
              ),
              TextFormField(
                controller: textController5,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis : johndoe19',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Password',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                ),
              ),
              TextFormField(
                controller: textController6,
                obscureText: !passwordVisibility,
                decoration: InputDecoration(
                  hintText: '************',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFCFCFCF),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => passwordVisibility = !passwordVisibility,
                    ),
                    child: Icon(
                      passwordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Color(0xFF757575),
                      size: 22,
                    ),
                  ),
                ),
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () async {
                  // await launchURL('localhost');
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF239BD8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Edit',
                          style:
                              Theme.of(context).textTheme.subtitle1.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
