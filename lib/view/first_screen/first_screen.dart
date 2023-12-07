import 'package:flutter/material.dart';
import 'package:flutter_application_30/controller/myconntroller.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final diceprovider = Provider.of<MyController>(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
          child: diceprovider.isloading == true
              ? Lottie.asset("assets/images/Animation - 1701959465304.json")
              : InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Provider.of<MyController>(context, listen: false)
                        .generate();
                  },
                  child: SizedBox(
                      height: 140,
                      width: 140,
                      child: Card(
                        elevation: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadowColor: Colors.greenAccent,
                        child: Image.asset(
                          diceprovider.diceImages[diceprovider.randomNumbers],
                          fit: BoxFit.cover,
                        ),
                      )),
                )),
    );
  }
}
