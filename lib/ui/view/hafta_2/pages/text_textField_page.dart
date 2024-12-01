import 'package:flutter/material.dart';
import 'package:odev/ui/utils/auth_validators.dart';

class TextTextFieldPage extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  State<TextTextFieldPage> createState() => _TextTextFieldPageState();
}

class _TextTextFieldPageState extends State<TextTextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: widget._formKey,
                autovalidateMode: widget._autovalidateMode,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: widget._emailController,
                        validator: AuthValidators.validateEmail,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Emailinizi giriniz",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: widget._passwordController,
                        validator: AuthValidators.validatePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Şifrenizi giriniz",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(widget._isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                widget._isPasswordVisible =
                                    !widget._isPasswordVisible;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        obscureText: !widget._isPasswordVisible,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget._formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        } else {
                          setState(() {
                            widget._autovalidateMode =
                                AutovalidateMode.onUserInteraction;
                          });
                        }
                      },
                      child: const Text("Giriş Yap"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
