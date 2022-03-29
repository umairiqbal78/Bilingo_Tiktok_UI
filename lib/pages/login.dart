import 'package:flutter/material.dart';
import 'package:tiktokapp/navigation_container.dart';
import 'package:tiktokapp/pages/login_with_email.dart';
import 'package:tiktokapp/pages/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
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
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Manage your account, check notifications, comment on videos, and more.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
              ),
              //fields of sign in
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginWithEmail())),
                child: _buildSocialMediaContainers(
                    context, 'person', 'Use phone / email / username'),
              ),
              _buildSocialMediaContainers(
                  context, 'facebook', 'Log in with Facebook'),
              _buildSocialMediaContainers(
                  context, 'google', 'Log in with Google'),
              _buildSocialMediaContainers(
                  context, 'twitter', 'Log in with Twitter'),
              _buildSocialMediaContainers(
                  context, 'apple', 'Log in with Apple'),
              _buildSocialMediaContainers(
                  context, 'instagram', 'Log in with Instagram'),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextButton(
                    child: Text("Sign up",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.pink,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildSocialMediaContainers(
      BuildContext context, String imageName, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(3.0)),
        height: 35,
        width: MediaQuery.of(context).size.width - 20,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/$imageName.png',
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(label,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
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
