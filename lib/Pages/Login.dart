import 'package:earth_mission/Constants/MyImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/MyColors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //**Form Key */
  final _formKey = GlobalKey<FormState>();
  //**Controllers for text fields */
  late final TextEditingController username;
  late final TextEditingController password;

  @override
  void initState() {
    username = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //**Username text field
    final usernameField = TextFormField(
      controller: username,
      validator: (value) {
        if (value!.isEmpty) return "First Name Can't Be Empty";
        return null;
      },
      onSaved: (value) {
        username.text = value!;
      },
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      cursorColor: Colors.black,
      decoration: const InputDecoration(
          hintText: "USER NAME",
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
    );
    //**Confirm Password text field
    final passwordField = TextFormField(
      controller: password,
      //**To check if the 2 passwords match */
      validator: (value) {
        return null;
      },
      onSaved: (value) {
        password.text = value!;
      },
      obscureText: true,
      autofocus: false,
      textInputAction: TextInputAction.done,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: "PASSWORD",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
    );
    //** Sign Up Button */
    final loginButton = SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          color: MyColors.mainColor,
          child: MaterialButton(
            onPressed: () async {
              login(username.text, password.text);
            },
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            minWidth: MediaQuery.of(context).size.width,
            child: const Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "SIGN IN",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: MyColors.mainColor),
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      MyImages.register,
                      width: MediaQuery.of(context).size.width - 200,
                    ),
                    const SizedBox(height: 45),
                    usernameField,
                    const SizedBox(height: 15),
                    passwordField,
                    const SizedBox(height: 20),
                    loginButton,
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text("Dont Have An Account ? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signUp');
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                color: MyColors.mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      )),
    );
  }

  void login(String email, String password) async {
    Navigator.of(context).pushReplacementNamed('/home');
  }
}
