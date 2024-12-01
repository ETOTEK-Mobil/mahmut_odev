import 'package:flutter/material.dart';
import 'package:odev/ui/utils/auth_validators.dart';

class TextTextFieldPage extends StatefulWidget {
  TextTextFieldPage({super.key});
  @override
  State<TextTextFieldPage> createState() => _TextTextFieldPageState();
}

class _TextTextFieldPageState extends State<TextTextFieldPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
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
                key: _formKey,
                autovalidateMode: _autovalidateMode,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: _emailController,
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
                        controller: _passwordController,
                        validator: AuthValidators.validatePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Şifrenizi giriniz",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        obscureText: !_isPasswordVisible,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        } else {
                          setState(() {
                            _autovalidateMode = AutovalidateMode.onUserInteraction;
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
