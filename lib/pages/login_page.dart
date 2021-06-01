import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Text(
              'Welcome $userName',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "Username :",
                    ),
                    onChanged: (value) {
                      userName = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password :",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoutes);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(minimumSize: Size(200, 40)),
                  //   onPressed: () {
                  //     // print('you clicked on login button !!');
                  //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //   },
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
