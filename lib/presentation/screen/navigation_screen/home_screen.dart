import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/presentation/widget/background_widget.dart';
import 'package:my_laundry/utils/app_colors.dart';
import 'package:my_laundry/utils/app_constants.dart';
import 'package:my_laundry/utils/font_style.dart';

import '../../../utils/app_images.dart';
import '../../widget/latest_order_list.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: SizedBox(width: double.infinity,height: double.infinity,
        child: BackgroundWidget(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              IconButton(
                  onPressed: ()=> Navigator.of(context).pop() ,
                  icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(AppConstants.WELCOME_BACK,style: TextStyle(color: AppColor.backgroundColor,fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("Caretutors",style: TextStyle(color: AppColor.whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                  ],),

                  const Spacer(),

                  Image.asset(Images.user,width: 100,height: 100,)

                ],),
              ),


              const SizedBox(height: 40,),


              Expanded(
                child: Container(width: double.infinity,height: double.infinity,padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                    Text(AppConstants.NEW_LOCATION,style: Theme.of(context).textTheme.titleMedium,),


                    /*SizedBox(width: double.infinity,height: 100,
                     child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return Container();
                         }
                     ),
                   )*/

                    const SizedBox(height: 10,),


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [

                        Stack(
                          children: [
                            Container(width: 220,height: 95,padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.purpleColor),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                                Text("King Streat 20,",style: FontStyle.headerTextStyle,),
                                Text("Bucaurest",style: FontStyle.subHeaderTextStyle,),

                              ],),
                            ),

                            Positioned(right: 0,bottom: 0,
                                child: Image.asset(Images.house1)
                            )

                          ],
                        ),

                        const SizedBox(width: 10,),

                        Stack(
                          children: [
                            Container(width: 220,height: 95,padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.orangeColor),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                                Text("Victory Square 1",style: FontStyle.headerTextStyle,),
                                Text("Bucaurest",style: FontStyle.subHeaderTextStyle,),

                              ],),
                            ),

                            Positioned(right: -5,bottom: 0,
                                child: Image.asset(Images.house2)
                            )

                          ],
                        ),

                      ],),
                    ),


                    //================================>>>>View All Button Here
                    Row(children: [
                      Text(AppConstants.LATEST_ORDER,style: Theme.of(context).textTheme.titleMedium,),
                      const Spacer(),
                      TextButton(
                          onPressed: (){},
                          child: const Text("View All",style: TextStyle(color: AppColor.blueColor,fontWeight: FontWeight.bold),)
                      )
                    ],),


                    //=======================>>>>>>>>Latest Order List here
                    const Expanded(
                      child: LatestOrderList(),
                    )




                  ],),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

