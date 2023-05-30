import 'package:flutter/material.dart';
import 'package:note_app/core/app_text_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        const AppTextFormField(
                          label: 'UserName',
                          textInputType: TextInputType.name,
                          prefixIcon: Icons.person,
                          obscureText: false,
                        ),
                        const SizedBox(height: 25),
                        const AppTextFormField(
                          label: 'Email',
                          textInputType: TextInputType.emailAddress,
                          prefixIcon: Icons.email,
                          obscureText: false,
                        ),
                        const SizedBox(height: 25),
                        const AppTextFormField(
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
                            child: const Text('SignUp'),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('You Have an account ?   ',
                                style: TextStyle(color: Colors.white)),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('login');
                              },
                              child: const Text(
                                'Click Here',
                                style: TextStyle(color: Colors.blue),
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
