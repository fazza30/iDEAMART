import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo
              ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  'assets/images/logo-uin.png',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              
              // UserName
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  'Hai, John Doe',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          
          // NotificationIcon
          Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}