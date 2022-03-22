// Import packages
import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({
    Key key,
    @required this.txtName1Controller,
    @required this.txtName2Controller,
  }) : super(key: key);

  final TextEditingController txtName1Controller;
  final TextEditingController txtName2Controller;

  // Code playground
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        
        // First Name
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First Name Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  5, 0, 0, 5),
              child: Text(
                'Nama Depan',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
              ),
            ),

            // First Name TextField
            Container(
              width:
                  MediaQuery.of(context).size.width * 0.4,
              constraints: BoxConstraints(
                maxWidth:
                    MediaQuery.of(context).size.width * 0.5,
              ),
              decoration: BoxDecoration(),
              child: TextFormField(
                controller: txtName1Controller,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis: John',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
                keyboardType: TextInputType.name,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Bagian ini harus diisi !';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),

        // Last Name
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Last Name Label
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  5, 0, 0, 5),
              child: Text(
                'Nama Belakang',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
              ),
            ),

            // Last Name TextField
            Container(
              width:
                  MediaQuery.of(context).size.width * 0.4,
              constraints: BoxConstraints(
                maxWidth:
                    MediaQuery.of(context).size.width * 0.5,
              ),
              decoration: BoxDecoration(),
              child: TextFormField(
                controller: txtName2Controller,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mis: Doe',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
                keyboardType: TextInputType.name,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Bagian ini harus diisi !';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}