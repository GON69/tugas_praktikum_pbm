import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('LEIBAL',style: TextStyle(
        color: Color.fromARGB(252, 0, 0, 0),
        fontSize: 25.0,
        fontWeight: FontWeight.w900,),
        ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
         ),
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: ListView(
           children: [
          const Text('ALL PRODUCTS',style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,),

          const SizedBox(
            height: 30.0,
          ),

          Image.asset(
            "assets/kursiku.png", 
            width: null,
            height: 350.0,
          ),

          const SizedBox(
            height: 19.0,
          ),

          const Text('[FRAMA]',style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,),

         const Text('WOOD SIMPLE CHAIR',style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,),
           
           const SizedBox(
            height: 19.0,
          ),

          const Text('Rp. 175.000',style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,),

          const SizedBox(
            height: 12.0,
          ),

          SizedBox(
            width: double.maxFinite,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 151, 151, 151)),
                ), child: const Text('[FILTERS]', style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
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