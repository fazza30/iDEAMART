import 'package:flutter/material.dart';

// NameFieldContainer
class RoundedNameField extends StatelessWidget {
  const RoundedNameField({
    Key key,
    @required this.txtName1,
    @required this.txtName2,
  }) : super(key: key);

  final TextEditingController txtName1;
  final TextEditingController txtName2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FirstName(txtName1: txtName1),
              LastName(txtName2: txtName2),
            ],
          ),
        ],
      ),
    );
  }
}
// End NameFieldContainer

// FirstName
class FirstName extends StatelessWidget {
  const FirstName({
    Key key,
    @required this.txtName1,
  }) : super(key: key);

  final TextEditingController txtName1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              5, 0, 0, 5),
          child: Text(
            'Nama Depan',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Container(
          width: 165,
          decoration: BoxDecoration(),
          child: TextFormField(
            controller: txtName1,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Mis: John',
              hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                fontFamily: 'Poppins'
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Color(0xFFF1F3EB),
            ),
            style: Theme.of(context).textTheme.bodyText1,
            keyboardType: TextInputType.name,
            validator: (val) {
              if (val.isEmpty) {
                return 'Bagian ini harus diisi !';
              } else
                return null;
            },
          ),
        ),
      ],
    );
  }
}
// End FirstName

// LastName
class LastName extends StatelessWidget {
  const LastName({
    Key key,
    @required this.txtName2,
  }) : super(key: key);

  final TextEditingController txtName2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              5, 0, 0, 5),
          child: Text(
            'Nama Belakang',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Container(
          width: 165,
          decoration: BoxDecoration(),
          child: TextFormField(
            controller: txtName2,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Mis: Doe',
              hintStyle: Theme.of(context).textTheme.bodyText1,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Color(0xFFF1F3EB),
            ),
            style: Theme.of(context).textTheme.bodyText1,
            keyboardType: TextInputType.name,
            validator: (val) {
              if (val.isEmpty) {
                return 'Bagian ini harus diisi !';
              } else
                return null;
            },
          ),
        ),
      ],
    );
  }
}
// End LastName