import 'package:eventhq_google_signin/googleSignIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  LoggedInWidget({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoggedIn'),
        actions: [
          TextButton(
              onPressed: (){
                final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                provider.logOut();
              },
              child: Text('Logout'),),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Profile',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 32,),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          SizedBox(height: 8,),
          Text(
            'Name:' + user.displayName!,
            style: TextStyle(fontSize: 24,color: Colors.white),
          ),
          SizedBox(height: 8,),
          Text(
            'Name:' + user.email!,
            style: TextStyle(fontSize: 24,color: Colors.white),
          ),
          TextButton(
            onPressed: (){
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.logOut();
            },
            child: Text('Logout'),),
        ],
      ),
    );
  }
}
