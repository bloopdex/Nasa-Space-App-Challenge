import 'package:earth_mission/Constants/MyColors.dart';
import 'package:earth_mission/Constants/MyImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  //**Form Key */
  final _formKey = GlobalKey<FormState>();
  //**Controllers for text fields */
  late final TextEditingController username;
  String birthMonth = 'January';
  late final TextEditingController birthDay;
  late final TextEditingController birthYear;
  late final TextEditingController password;

  @override
  void initState() {
    username = TextEditingController();
    birthDay = TextEditingController();
    birthYear = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    username.dispose();
    birthDay.dispose();
    birthYear.dispose();
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
    //**Birth Month text field
    final monthDropDown = Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: MyColors.mainColor)),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(10),
          underline: Container(),
          items: months.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              birthMonth = value!;
            });
          },
          value: birthMonth,
        ));
    //**Birth Day text field
    final birthdayField = SizedBox(
        width: MediaQuery.of(context).size.width * 0.2,
        child: TextFormField(
          controller: birthDay,
          //**The Email Validator using regex expression */
          validator: (value) {
            return null;
          },
          onSaved: (value) {
            birthDay.text = value!;
          },
          autofocus: false,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
              hintText: "Day",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
        ));
    //**Birth Year text field
    final birthYearField = SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: TextFormField(
          controller: birthYear,
          //**The Password Validator using regex expression */
          validator: (value) {
            return null;
          },
          onSaved: (value) {
            birthYear.text = value!;
          },
          autofocus: false,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          cursorColor: MyColors.mainColor,
          decoration: InputDecoration(
              hintText: "Year",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
        ));
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
    final signUpButton = SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          color: MyColors.mainColor,
          child: MaterialButton(
            onPressed: () async {
              signUp(birthDay.text, birthYear.text);
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
                    const SizedBox(height: 20),
                    const Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: MyColors.mainColor),
                    ),
                    const SizedBox(height: 40),
                    SvgPicture.asset(
                      MyImages.register,
                      width: MediaQuery.of(context).size.width - 200,
                    ),
                    const SizedBox(height: 20),
                    usernameField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        monthDropDown,
                        birthdayField,
                        birthYearField,
                      ],
                    ),
                    const SizedBox(height: 70),
                    signUpButton,
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text("Already Have An Account ? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signIn');
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: MyColors.mainColor),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    Navigator.of(context).pushNamed('/home');
  }
}
