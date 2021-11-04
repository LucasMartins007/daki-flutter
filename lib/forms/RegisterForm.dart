import 'dart:convert';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web/components/CustomFieldDecoration.dart';
import 'package:flutter_web/decorations/CustomButtonStyle.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';
import 'package:flutter_web/model/EmailModel.dart';
import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/service/UserService.dart';
import 'package:flutter_web/validators/UserValidator.dart';

final _formKey = GlobalKey<FormState>();

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  UserService userService = new UserService();
  bool _obscureText = true;
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _cpfController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Center(
                child: Text(
                  "Cadastre-se",
                  style: CustomTextStyle().getDefaultTitleStyle(null, true),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: TextFormField(
                validator: UserValidator.validateName,
                controller: _nameController,
                decoration: customFieldDecoration.setDecoration(
                    "Nome", "Digite seu nome", null, null, false),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: TextFormField(
                validator: UserValidator.validateEmail,
                controller: _emailController,
                decoration: customFieldDecoration.setDecoration(
                    "E-mail", "Digite seu email", null, null, false),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: TextFormField(
                validator: UserValidator.validateCpf,
                controller: _cpfController,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                decoration: customFieldDecoration.setDecoration(
                    "CPF", "Digite seu cpf", null, null, false),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: TextFormField(
                validator: UserValidator.validatePassword,
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: customFieldDecoration.setDecoration(
                    "Senha",
                    "Digite sua senha",
                    Icon(
                      Icons.mail_outline,
                      color: Colors.black87,
                    ),
                    GestureDetector(
                      child: Icon(
                        _obscureText == false
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black87,
                      ),
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    true),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text("Confirmar"),
                  style: CustomButtonStyle().getCustomButtonStyle(
                      20, 170, 17, Color.fromARGB(1000, 32, 32, 32)),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      EmailModel emailModel = new EmailModel(
                          email: _emailController.text, principal: true);
                      UserModel userModel = new UserModel(
                        nome: _nameController.text,
                        email: emailModel,
                        cpf: _cpfController.text,
                        senha: _passwordController.text,
                      );
                      userService.onSave(userModel, context);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
