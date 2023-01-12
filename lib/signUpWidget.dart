import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eventhq_google_signin/googleSignIn.dart';
import 'package:provider/provider.dart';


class  SignUpWidget extends StatelessWidget {
  const  SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'hey welcome to flutter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'login to your account to continue',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: () {
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.googleLogIn();
            },
            label: Text(
              'Sign Up with Google',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(50, 50),
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 40,),
          RichText(
            text: TextSpan(
              text: 'Already have an account?',
              style: TextStyle(
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

