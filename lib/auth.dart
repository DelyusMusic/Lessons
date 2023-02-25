import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "MonkeyApp ",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                    ),
                  ),
                  Image.asset("Images/monkey.png"),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    label: const Text(
                      "Email",
                    ),
                    labelStyle: const TextStyle(color: Colors.amber),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.amber)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.amber)),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.lime,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.amber,
                  decoration: InputDecoration(
                    label: const Text(
                      "Password",
                    ),
                    labelStyle: const TextStyle(color: Colors.amber),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.amber)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.amber)),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.lime,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/home');
                    Navigator.popAndPushNamed(context, '/home');
                    const AlertDialog(
                      title: Text(
                        "Выполнен переход",
                      ),
                      backgroundColor: Colors.green,
                    );
                  },
                  child: const Text("Sign In"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              InkWell(
                child: const Text(
                  "Sign Up?",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
