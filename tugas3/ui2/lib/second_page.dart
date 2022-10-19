import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: ListView(
           children: [
          const Text('Create your card',style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,),

          const SizedBox(
            height: 35.0,
          ),

          SizedBox(
            width: 10.0,
            height: null,
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(), 
              child: const Text('Standard', style: TextStyle(
                  color: Color.fromARGB(255, 57, 57, 57),
                  fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center
                ),),
              ),
              SizedBox(
            width: 10.0,
            height: null,
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(), 
              child: const Text('Metal', style: TextStyle(
                  color: Color.fromARGB(255, 180, 180, 180),
                  fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center
                ),),
              ),

          const SizedBox(
            height: 40.0,
          ),

          Image.asset(
            "assets/debitkuh.png", 
            width: null,
            height: 320.0,
          ),

          const SizedBox(
            height: 80.0,
          ),

          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 21, 16, 51)),
                ), child: const Text('Continue', style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center
                ),),
              ),
        ],
        ),
      ),
    );
  }
}