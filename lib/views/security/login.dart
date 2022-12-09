
import 'package:dashboard/views/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../connections/login.dart';
import '../../database/database.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _login = TextEditingController();
  final _password = TextEditingController();
  final double _formSize = 220.0;

  getAndSetUsername()async{
    String? username = await getUsername();
    if (username != null){
      _login.text = username;
    }
  }

  @override
  void initState() {
    getAndSetUsername();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('images/logo-cut.png'),
                      width: 280,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: _formSize,
                      child: TextFormField(
                        controller: _login,
                        decoration: const InputDecoration(
                          labelText: "User Name",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: _formSize,
                      child: TextFormField(
                        controller: _password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: (() async {
                          try{
                            Response response = await loginToApi(_login, _password, context);
                            if(response.statusCode == 200)
                            {
                              // ignore: use_build_context_synchronously
                              Navigator.push(context,
                                  MaterialPageRoute(builder:(context) => const Dashboard())
                              );
                            }
                            else
                            {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(response.reasonPhrase!)
                              ));
                            }
                          }
                          catch(error){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(error.toString())
                            ));
                          }
                          // this will identify if the user can log in.

                        }),
                        child: const Text('Log In'),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                const Text('version:1.0')
              ],
            ),
          ),
        ),
      ),
    );
  }
}