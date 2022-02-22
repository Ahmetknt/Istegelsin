import 'package:flutter/material.dart';
import 'package:istegelsin/model/User.dart';
import 'package:istegelsin/validate/Validator.dart';
import 'package:istegelsin/view/Register.dart';

import 'Anasayfa.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with Validator {
  final formKey = GlobalKey<FormState>();
  final User user = User.empty();
  String checkUser = "";
  String checkPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(child: Text("Giriş Yap")),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                children: [
                  loginImage(),
                  userNameField(),
                  passwordField(),
                  submitButton(),
                  registerText()
                ],
              ),
            ),
          ),
        ));
  }

  Widget loginImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, bottom: 8),
      child: Container(height: 150, child: Image.asset("images/login.png")),
    );
  }

  Widget userNameField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onSaved: (String? value) {
          checkUser = value!;
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

            if (Register.registerCustomerList.isEmpty) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.deepOrange,
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      title: Text(
                        "Geçersiz Kullanıcı",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      content: Text(
                        "Böyle bir kullanıcı bulunamadı. Lütfen kaydolun.",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("İptal"),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text("Kayıt Ol"),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green),
                        ),
                      ],
                    );
                  });
            }

            setState(() {
              for (int i = 0; i < Register.registerCustomerList.length; i++) {
                if (checkUser == Register.registerCustomerList[i].username &&
                    checkPassword ==
                        Register.registerCustomerList[i].password) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Anasayfa()));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.deepOrange,
                          elevation: 15,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          title: Text(
                            "Hatalı Giriş",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black),
                          ),
                          content: Text(
                            "Kullanıcı adı veya parola yanlış. Lütfen tekrar deneyin.",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Tekrar Dene"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                            ),
                          ],
                        );
                      });
                }
              }
            });
          }
        },
        child: Text(
          "Giriş Yap",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.deepOrange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
      ),
    );
  }

  Widget registerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hesabın yok mu?",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
            child: Text(
              "Hemen Kaydol",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
