import 'package:flutter/material.dart';

class Username extends StatelessWidget {
  const Username({
    Key key,
    @required this.txtPhoneController2,
  }) : super(key: key);

  final TextEditingController txtPhoneController2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Username Label
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
            child: Text(
              'Username',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
            ),
          ),

          // Username TextField
          TextFormField(
            controller: txtPhoneController2,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Mis : johndoe1234',
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
            keyboardType: TextInputType.text,
            validator: (val) {
              if (val.isEmpty) {
                return 'Bagian ini harus diisi !';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}