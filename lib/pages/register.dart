import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.26,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              // const SizedBox(
              //   height: 28,
              // ),
              Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Sign up to create a new account",
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
                    hintText: "Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue[800],
                    )),
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
                    hintText: "Confirm Password",
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("By clicking this, I agree to the"),
                  Text(
                    "Terms and ",
                    style: TextStyle(color: Colors.blue[800]),
                  )
                ],
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Conditions & Privacy Policy ",
                  style: TextStyle(color: Colors.blue[800]),
                ),
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
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
        // child: const Text("sdfsd")
      ),
    );
  }
}
