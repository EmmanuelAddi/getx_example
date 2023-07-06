import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
        ),
      ),
      body: Container(
         width: double.maxFinite,
        height: double.maxFinite,
        child: Column(children: [
          GetBuilder<TapController>(
            builder: (_){
              return Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  controller.x.toString() , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            );
            },            
          ),
           GestureDetector(
            onTap: () {
              controller.decreaseX();
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
                  'Decrease x' , style: TextStyle(
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