import 'package:cook_chef_project/models/users_model.dart';
import 'package:cook_chef_project/services/users_service.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 80),
            alignment: const Alignment(0, 0),
            height: 260,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg_login.png'),
              ),
            ),
            child: const Text(
              'Welcome Back',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: emailController,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 50),
                  child: Text(
                    'forget password ?',
                    style: TextStyle(
                        color: Color.fromARGB(202, 158, 158, 158),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                FilledButton(
                  onPressed: () async {
                    // print("${emailController.text} ${passwordController.text}");
                    // print(await getTokenForUser(UsersModel(
                    //   email: emailController.text,
                    //   password: passwordController.text,
                    // )));
                    bool isTrue = await getTokenForUser(
                          UsersModel(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        ) ==
                        true;
                    if (isTrue) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const BottomBar();
                      }));
                    } else {
                      const Center(child: CircularProgressIndicator());
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xfffb9a0d),
                    fixedSize: const Size(440, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                    color: Color(0xff93a0b6),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color(0xfffb9a00),
                        fontSize: 17,
                        fontWeight: FontWeight.w800),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
