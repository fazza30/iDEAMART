import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class HeaderWithLogo extends StatelessWidget {
  const HeaderWithLogo({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          // Header
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 86 + kDefaultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hai, Username !',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Icon(Icons.notifications, color: Colors.white,)
              ],
            ),
          ),
          
          // Kotak Logo
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 104,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: size.width * 0.01),
                    Text('Logo UIN'),
                    SizedBox(width: size.width * 0.2),
                    Text('Logo Pusat Karir')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}