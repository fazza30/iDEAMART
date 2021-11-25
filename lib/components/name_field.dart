import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class FirstNameField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const FirstNameField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Nama Depan"),
          NameContainer(
            child: TextField(
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LastNameField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const LastNameField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Nama Belakang"),
          NameContainer(
            child: TextField(
              onChanged: onChanged,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}


class NameContainer extends StatelessWidget {
  final Widget child;
  const NameContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.39,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
      ),
      child: child,
    );
  }
}