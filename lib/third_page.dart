import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controllers/tap_controller.dart';

import 'controllers/list_controller.dart';
import 'home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
         width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(children: [
              Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  "Total value is "+Get.find<TapController>().z.toString() , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue
              ),
              child: Center(
                child: Text(
                  "Y value "+Get.find<TapController>().y.value.toString() , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            ],)
           ),
         GestureDetector(
            onTap: () {
              Get.to(()=>Home());
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
                  "X value "+Get.find<TapController>().x.toString() , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
           ),  
           GestureDetector(
            onTap: () {
              //Get.to(()=>Home());
              Get.find<TapController>().increaseY();
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
                  "Increase Y " , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
           ), 
           GestureDetector(
            onTap: () {
              Get.find<TapController>().totalXY();
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
                  "Total X+Y " , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
           ), 
           GestureDetector(
            onTap: () {
              Get.find<ListController>().setValues(Get.find<TapController>().z);
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
                  "Save Total " , style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
           ),         
                        
                
        ],),
      ),
    );
  }
}