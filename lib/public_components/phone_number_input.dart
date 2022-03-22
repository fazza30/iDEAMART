import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({
    Key key,
    @required this.txtPhoneController1,
  }) : super(key: key);

  final TextEditingController txtPhoneController1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Phone Number Label
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
            child: Text(
              'No. Telepon',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
            ),
          ),

          // Phone Number TextField
          TextFormField(
            controller: txtPhoneController1,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Mis: 0812345. . .',
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
            keyboardType: TextInputType.number,
            validator: (val) {
              if (val.isEmpty) {
                return 'Bagian ini harus diisi !';
              }
              if (val.length < 11) {
                return 'Nomor telepon tidak sesuai !';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
