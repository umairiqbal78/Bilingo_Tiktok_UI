import 'package:flutter/material.dart';
import 'package:tiktokapp/pages/Sign_up_email.dart';
import 'package:tiktokapp/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person_outline_rounded,
                color: Colors.grey,
                size: 180,
              ),
              const SizedBox(
                height: 25.0,
              ),
              Text(
                "Sign up for an account",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.grey[800],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                  height: 45.0,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    onPressed: () {
                      _show = true;
                      setState(() {});
                    },
                  ))
            ],
          ),
        ),
        bottomSheet: _showBottomSheet());
  }

  Widget _showBottomSheet() {
    if (_show) {
      return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.90,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close_rounded),
                        color: Colors.black,
                        onPressed: () {
                          _show = false;
                          setState(() {});
                        },
                      ),
                      const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(
                  "Sign Up for Blingo",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Create a profile, follow other accounts, make your  own video and more.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SignUpWithEmail()))),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3.0)),
                    height: 35,
                    width: MediaQuery.of(context).size.width - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.mail_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 12),
                        Text("Use phone or email",
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.grey[800],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)),
                  height: 35,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.g_mobiledata,
                        color: Colors.black,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 12),
                      Text("Continue with Google",
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.grey[800],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Text(
                    "By continuing, you agree to our Terms of Service and acknowledge that you have read our Privacy Policy to learn how we collect,use and share your data.If you sign up with SMS, SMS Fee may apply",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have An Account ?",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    TextButton(
                      child: Text("Sign In",
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.pink,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    } else {
      return const Text("");
    }
  }
}
