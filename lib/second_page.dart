import 'package:flutter/material.dart';
import 'package:getx_example/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         GestureDetector(
            onTap: () {
              Get.to(()=>ThirdPage());
            },
            child:  Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  'Third Page' , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
           )           
        ],),
      ),
    );
  
  }
}