import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/g715.png',
                  height: 150,
                  scale: 0.5,
                ),
              ),
              const SizedBox(height: 48,),
              //title
              Text(
                'Just Do it!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ) ,
                ),
                const SizedBox(height: 10,),
              Text(
                'Brand New Items For Sale',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black45,
                ) ,
                ),
              const SizedBox(height: 48,),
          
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),),),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                      ),
                  ),
                ),
              )
          
              //
            ],
          ),
        ),
      ),
    );
  }
}