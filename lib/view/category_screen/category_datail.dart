import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/functions/handle_dataview.dart';

import '../../controller/layout_controller/categories_controller.dart';
import '../widgets/categories/buildcatitems.dart';

class CATEGORIESDatailsScreen extends GetView<CategoryController> {
  const CATEGORIESDatailsScreen({super.key, required this.categoryname,});
  final String categoryname;
  @override
  Widget build(BuildContext context) {
   
    return GetBuilder<CategoryController>(
      builder: (c) => Scaffold(
        appBar: AppBar(
          title: Text(categoryname),
        ),
        body: HandlingDataView(
          stateRequest: controller.stateRequest,
          widget: ConditionalBuilder(
            condition: controller.categoryDetailModel != null ,
            fallback: (context) =>const Center(child:  CircularProgressIndicator()),
            builder: (context) => const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    
                    Expanded(
                      
                      child: BuildCatItems(
                                
                                  )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


