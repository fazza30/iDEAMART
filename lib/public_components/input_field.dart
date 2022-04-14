// ignore_for_file: must_be_immutable

part of 'package:flutter_auth/view.dart';

class InputTextFields extends StatelessWidget {
  TextEditingController textInputController;
  TextInputType keyboardType;
  String title, hint;

  InputTextFields({ 
    Key? key,
    required this.textInputController,
    required this.title,
    required this.hint,
    required this.keyboardType
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1
        ),
        TextFormField(
          controller: textInputController,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1
              ),
              borderRadius: BorderRadius.circular(4)
            )
          ),
          style: Theme.of(context).textTheme.bodyText1,
          keyboardType: keyboardType,
          validator: (val) {
            if (val!.isEmpty) {
              return 'Bagian ini harus diisi!';
            }
            return null;
          },
        )
      ],
    );
  }
}

class InputPasswordFields extends StatelessWidget {
  bool passwordVisibility = true;
  TextEditingController textPasswordController;
  String title, hint;

  InputPasswordFields({
    Key? key,
    required this.textPasswordController,
    required this.title,
    required this.hint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1
        ),
        TextFormField(
          controller: textPasswordController,
          obscureText: passwordVisibility,
          decoration: InputDecoration(
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1
              )
            ),
            suffixIcon: IconButton(
              icon: Icon(
                passwordVisibility ? Icons.visibility : Icons.visibility_off
              ),
              onPressed: () {
                (() {
                  passwordVisibility = !passwordVisibility;
                });
              },
            )
          ),
          style: Theme.of(context).textTheme.bodyText1,
          keyboardType: TextInputType.text,
          validator: (val) {
            if (val!.isEmpty) {
              return 'Bagian ini harus diisi!';
            }
            return null;
          },
        )
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Statue Field
class Statue extends StatelessWidget {
  
  String? _status;
  List _statusList = [
    "Mahasiswa",
    "Alumni",
    "Dosen",
    "Staff",
    "Umum"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: 'Poppins'),
        ),
        DropdownButtonFormField(
          hint: Text("Pilih status Anda"),
          value: _status,
          items: _statusList.map((value) {
            return DropdownMenuItem (
              child: Text(value),
              value: value,
            );
          }).toList(),
          onChanged: (value) {
           // ignore: unnecessary_statements
           () {
              // _statusList = value;
            };
          },
          decoration: InputDecoration(
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
          validator: (val) {
            if (val == null) {
              return 'Pilih salah satu!';
            }
            return null;
          },
        )
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Hint Field
class Hint extends StatelessWidget {
  String? _qn;
  List _qnList = [
    "Apa makanan favoritmu?",
    "Apa warna favoritmu?"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pertanyaan Keamanan',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: 'Poppins'),
        ),
        DropdownButtonFormField(
          hint: Text("Pilih pertanyaan Anda"),
          value: _qn,
          items: _qnList.map((value) {
            return DropdownMenuItem (
              child: Text(value),
              value: value,
            );
          }).toList(),
          onChanged: (value) {
           // ignore: unnecessary_statements
           () {
              // _qnList = value;
            };
          },
          decoration: InputDecoration(
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
          validator: (val) {
            if (val == null) {
              return 'Pilih salah satu!';
            }
            return null;
          },
        )
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Password Field
class Password extends StatelessWidget {
  final userController = Get.put(
      RegisterController()); //inisialisasi menggunakan get dari RegisterController

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kata Sandi',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: 'Poppins'),
        ),
        Obx((() => TextFormField(
              // controller: userController.passwordEditingController,
              // obscureText: userController.txtPasswordVisibility.value,
              decoration: InputDecoration(
                hintText: 'Masukkan password Anda',
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
                suffixIcon: InkWell(
                  onTap: () {
                    // userController.txtPasswordVisibility.value =
                    //   !userController.txtPasswordVisibility.value;
                  },
                  child: Icon(
                    // userController.txtPasswordVisibility.value
                        /*?*/ Icons.visibility_outlined,
                        // : Icons.visibility_off_outlined,
                    color: Color(0xFF757575),
                    size: 22,
                  ),
                ),
              ),
              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontFamily: 'Poppins'),
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Bagian ini harus diisi !';
                }
                return null;
              },
            )
          )
        )
      ],
    );
  }
}