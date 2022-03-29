import 'package:flutter/material.dart';
import 'package:tiktokapp/navigation_container.dart';
import 'package:tiktokapp/pages/login.dart';
import 'package:tiktokapp/pages/signup.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    final _passwordFieldKey = GlobalKey<FormFieldState<String>>();
    return Scaffold(
        body: Center(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Log in to Blingo",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            //Email
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(2)),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 12.0),
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.pink,
                  ),
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty && !emailRegex.hasMatch(value)) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Password Field
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: TextFormField(
                cursorColor: Colors.grey,
                key: _passwordFieldKey,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(2)),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 12.0),
                  hintText: "Password",
                  icon: const Icon(
                    Icons.password_outlined,
                    color: Colors.pink,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password do not match';
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text("Forgot your Password?",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.grey,
                            fontSize: 12,
                          )),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 45.0,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(4)),
              child: TextButton(
                child: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Process data");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const NavigationContainer()),
                      ),
                    );
                  } else {
                    print('Error');
                  }
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account ?",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                ),
                TextButton(
                  child: Text("Sign Up",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Colors.pink,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
