import 'package:flutter/material.dart';
import 'package:ridealong/screens/login/login_screen.dart';

import '../../styles/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_formfield.dart';
import '../../widgets/custom_header.dart';
import '../../widgets/custom_richtext.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _userName = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get userName => _userName.text.trim();
  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: AppColors.blue,
              ),
              CustomHeader(
                  text: 'Register',
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  }),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.08,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.whiteshade,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.09),
                        child: Image.asset("assets/images/login.png"),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomFormField(
                        headingText: "Email",
                        hintText: "Email",
                        obsecureText: false,
                        suffixIcon: const SizedBox(),
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        controller: _emailController,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomFormField(
                        maxLines: 1,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.text,
                        controller: _passwordController,
                        headingText: "Password",
                        hintText: "At least 8 Character",
                        obsecureText: true,
                        suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility), onPressed: () {}),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AuthButton(
                        onTap: () {},
                        text: 'Sign Up',
                      ),
                      CustomRichText(
                        discription: 'Already Have an account? ',
                        text: 'Log In here',
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}