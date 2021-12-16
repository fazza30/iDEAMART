import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextEditingController txtPhone;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.txtPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
              child: Text(
                'No. Telepon',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
              ),
            ),
            TextFormField(
              controller: txtPhone,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Mis: 0812345. . .',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
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
              keyboardType: TextInputType.number,
              validator: (val) {
                if (val.isEmpty) {
                  return 'Bagian ini harus diisi !';
                }
                if (val.length < 11) {
                  return 'Nomor telepon tidak valid !';
                }
                return null;
              },
            ),
          ],
        ));
  }
}
