import 'package:flutter/material.dart';
import 'package:istegelsin/model/User.dart';
import 'package:istegelsin/validate/Validator.dart';
import 'package:istegelsin/view/LoginPage.dart';

class Register extends StatefulWidget {
  static List<User> registerCustomerList = <User>[];
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with Validator {
  final formKey = GlobalKey<FormState>();
  final User user = User.empty();
  String checkUsername = "";
  String checkPassword = "";
  String checkIl = "";
  String checkIlce = "";
  String checkMahalle = "";
  String checkSokak = "";
  String checkAcikadres = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(child: Text("Kayıt Ol")),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                userNameField(),
                passwordField(),
                ilField(),
                ilceField(),
                mahalleField(),
                sokakField(),
                acikadresField(),
                submitButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ilField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkIl = value!;
        },
        decoration: InputDecoration(
          labelText: "İl",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateIl,
      ),
    );
  }

  Widget ilceField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkIlce = value!;
        },
        decoration: InputDecoration(
          labelText: "İlçe",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateIlce,
      ),
    );
  }

  Widget mahalleField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkMahalle = value!;
        },
        decoration: InputDecoration(
          labelText: "Mahalle",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateMahalle,
      ),
    );
  }

  Widget sokakField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkSokak = value!;
        },
        decoration: InputDecoration(
          labelText: "Sokak",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateSokak,
      ),
    );
  }

  Widget acikadresField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkAcikadres = value!;
        },
        decoration: InputDecoration(
          labelText: "Açık Adres",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateAcikAdres,
      ),
    );
  }

  Widget userNameField() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 50),
      child: TextFormField(
        onSaved: (String? value) {
          checkUsername = value!;
        },
        decoration: InputDecoration(
          labelText: "Kullanıcı Adı",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validateUserName,
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkPassword = value!;
        },
        decoration: InputDecoration(
          labelText: "Şifre",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: Colors.deepOrange, width: 2),
          ),
        ),
        validator: validatePassword,
        obscureText: true,
      ),
    );
  }

  Widget submitButton() {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            setState(() {
              var c1 = User(
                  username: checkUsername,
                  password: checkPassword,
                  il: checkIl,
                  ilce: checkIlce,
                  mahalle: checkMahalle,
                  sokak: checkSokak,
                  acikAdres: checkAcikadres);
              Register.registerCustomerList.add(c1);
            });
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          }
        },
        child: Text("Kayıt Ol", style: TextStyle(fontSize: 20)),
        style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
