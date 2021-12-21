import 'package:flutter/material.dart';

class HeadRsp extends StatefulWidget {
  const HeadRsp({Key key}) : super(key: key);

  @override
  _HeadRspState createState() => _HeadRspState();
}

class _HeadRspState extends State<HeadRsp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: Colors.black,
              size: 34,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(98, 0, 120, 0),
            child: Text(
              'Summary',
              style: Theme.of(context).textTheme.headline1.copyWith(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}