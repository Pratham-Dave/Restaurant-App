import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(blurRadius: 2),
              ]),
          child: Column(
            children: <Widget>[
              Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Sign In to continue",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.blue[800],
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue[800],
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue[800],
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("Remember me"),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue[800]),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 40),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue[800], // foreground
                ),
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "Or",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        backgroundColor: Colors.blue[900],
                      ),
                      onPressed: () {},
                      child: const Text("Facebook")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(100, 40),
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {},
                      child: const Text("Google"))
                ],
              ),
            ],
          ),
        ),
        // child: const Text("sdfsd")
      ),
    );
  }
}
