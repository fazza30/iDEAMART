// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_statements

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';

// -------------------------------------------------------------------------
// FirstName Field
class FirstName extends StatelessWidget {
  FirstName({
    Key key,
    @required this.firstNameTextFieldController,
  }) : super(key: key);

  final TextEditingController firstNameTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nama Depan',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: firstNameTextFieldController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Mis: John',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.name,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// LastName Field
class LastName extends StatelessWidget {
  LastName({
    Key key,
    @required this.lastNameTextFieldController,
  }) : super(key: key);

  final TextEditingController lastNameTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nama Belakang',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: lastNameTextFieldController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Mis: Doe',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.name,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Phone Field
class Phone extends StatelessWidget {
  Phone({
    Key key,
    @required this.phoneTextFieldController,
  }) : super(key: key);

  final TextEditingController phoneTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No. Telepon',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: phoneTextFieldController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Masukkan nomor telepon Anda',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.phone,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Jobs Field
class Jobs extends StatelessWidget {
  Jobs({
    Key key,
    @required this.jobsTextFieldController,
  }) : super(key: key);

  final TextEditingController jobsTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pekerjaan',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: jobsTextFieldController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Masukkan pekerjaan Anda',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.text,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Email Field
class Email extends StatelessWidget {
  Email({
    Key key,
    @required this.emailTextFieldController,
  }) : super(key: key);

  final TextEditingController emailTextFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: emailTextFieldController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Masukkan email Anda',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.emailAddress,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Statue Field
class Statue extends StatelessWidget {
  
  String _status;
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
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
           () {
              _statusList = value;
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
        )
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Hint Field
class Hint extends StatelessWidget {
  String _qn;
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
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
           () {
              _qnList = value;
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
        )
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Answer Hint Field
class AnswerHint extends StatelessWidget {
  final userController = Get.put(
      RegisterController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jawaban Keamanan',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: userController.usernameEditingController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Tulis jawabanmu disini',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.text,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
      ],
    );
  }
}

// -------------------------------------------------------------------------
// Username Field
class Username extends StatelessWidget {
  final userController = Get.put(
      RegisterController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nama Pengguna',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        TextFormField(
          controller: userController.usernameEditingController,
          obscureText: false,
          decoration: InputDecoration(
            hintText: 'Masukkan username Anda',
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
          keyboardType: TextInputType.text,
          validator: (val) {
            if (val.isEmpty) {
              return 'Bagian ini harus diisi !';
            }
            return null;
          },
        ),
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
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        Obx((() => TextFormField(
              controller: userController.passwordEditingController,
              obscureText: userController.txtPasswordVisibility.value,
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
                    userController.txtPasswordVisibility.value =
                      !userController.txtPasswordVisibility.value;
                  },
                  child: Icon(
                    userController.txtPasswordVisibility.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0xFF757575),
                    size: 22,
                  ),
                ),
              ),
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
              validator: (val) {
                if (val.isEmpty) {
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

// -------------------------------------------------------------------------
// Confirm Password Field
class CPassword extends StatelessWidget {
  final userController = Get.put(
      RegisterController()); //inisialisasi menggunakan get dari RegisterController

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Konfirmasi Password',
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
        ),
        Obx((() => TextFormField(
              controller: userController.passwordEditingController,
              obscureText: userController.txtPasswordVisibility.value,
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
                    userController.txtPasswordVisibility.value =
                      !userController.txtPasswordVisibility.value;
                  },
                  child: Icon(
                    userController.txtPasswordVisibility.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0xFF757575),
                    size: 22,
                  ),
                ),
              ),
              style: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: 'Poppins'),
              validator: (val) {
                if (val.isEmpty) {
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