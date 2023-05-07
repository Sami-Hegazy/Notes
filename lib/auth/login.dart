import 'package:flutter/material.dart';
import 'package:note_app/textFormField_custom.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xff252525),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                        child: Column(
                      children: [
                        const CustomTextFormField(
                          label: 'UserName',
                          textInputType: TextInputType.name,
                          prefixIcon: Icons.person,
                          obscureText: false,
                        ),
                        const SizedBox(height: 25),
                        const CustomTextFormField(
                          label: 'Password',
                          textInputType: TextInputType.visiblePassword,
                          prefixIcon: Icons.password,
                          obscureText: true,
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('home');
                            },
                            child: const Text('Login'),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account ?   ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('signup');
                              },
                              child: const Text(
                                'Click Here',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
