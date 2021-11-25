import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class GridButton extends StatelessWidget {
  const GridButton({
    Key key, 
    this.title, 
    this.press, 
    this.icon, 
    this.color,
  }) : super(key: key);

  final String title;
  final Color color;
  final Function press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding* 0.4,
          right: kDefaultPadding * 0.4,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 0.4),
      width: size.width * 0.25,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: <Widget>[
                  Icon(icon, size: 70, color: Colors.white),
                  Center(
                    child: FittedBox(
                      child: Text(
                        "$title".toUpperCase(),
                        style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowButton1 extends StatelessWidget {
  const RowButton1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          GridButton(
            icon: Icons.lightbulb,
            color: Colors.red,
            title: "Survei Karir",
            press: () {},
          ),
          GridButton(
            icon: Icons.help,
            color: Colors.blue,
            title: "Coming Soon",
            press: () {},
          ),
          GridButton(
            icon: Icons.help,
            color: Colors.green,
            title: "Coming Soon",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RowButton2 extends StatelessWidget {
  const RowButton2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          GridButton(
            icon: Icons.help,
            color: Colors.blue,
            title: "Coming Soon",
            press: () {},
          ),
          GridButton(
            icon: Icons.help,
            color: Colors.green,
            title: "Coming Soon",
            press: () {},
          ),
          GridButton(
            icon: Icons.more_horiz_sharp,
            color: Colors.red,
            title: "Lainnya",
            press: () {},
          ),
        ],
      ),
    );
  }
}