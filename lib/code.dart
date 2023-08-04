import 'package:final_year_project/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

void main() {
  runApp(const Codepage());
}

class Codepage extends StatefulWidget {
  const Codepage({super.key});

  @override
  State<Codepage> createState() => _CodepageState();
}

class _CodepageState extends State<Codepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Write the code below",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 50,
                child: OtpTextField(
                  numberOfFields: 6,
                  fieldWidth: 50,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  showFieldAsBox: true,
                  focusedBorderColor: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  // decoration: const InputDecoration(
                  //   enabledBorder: OutlineInputBorder(),
                  //   focusedBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black, width: 2.0),
                  //   ),
                  // ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                children: [
                  Text(
                    "We’ve sent you a verification code in the email ID or phone number you have provided.",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(137, 28, 22, 22)),
                  ),
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //       height: 55,
              //       width: 55,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(20))),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 55,
              //       width: 55,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(20))),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 55,
              //       width: 55,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(20))),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 55,
              //       width: 55,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(20))),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 55,
              //       width: 55,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(20))),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      "Confirm",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t get the code?",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(137, 28, 22, 22)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Resend Code.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
