import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_laundry/presentation/screen/other_screen/order_details_screen.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_constants.dart';

class LatestOrderList extends StatelessWidget {
  const LatestOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [

        Container(width: double.infinity,height: 120,
          decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.blueColor)
          ),

          child: Material(color: Colors.transparent,
            child: InkWell(
              onTap: ()=>Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const OrderDetailsScreen())),
              splashColor: AppColor.blueColor,
              child: Padding(padding: const EdgeInsets.all(10),

                child: Row( crossAxisAlignment: CrossAxisAlignment.start, children: [

                  const CircleAvatar(
                    backgroundColor : Color(0xffFFE8D9),
                    child: Icon(Icons.alarm,color: AppColor.orangeColor,),
                  ),

                  const SizedBox(width: 20,),

                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(AppConstants.DELEVERING_ORDER,style: Theme.of(context).textTheme.titleMedium,),

                    const SizedBox(height: 10,),

                    Row(children: [
                      Text(AppConstants.PLACEED_ON,style: Theme.of(context).textTheme.headlineMedium,),
                      Text("2020 01 19",style: Theme.of(context).textTheme.displayMedium,),
                    ],),

                    Row(children: [
                      Text(AppConstants.DELIVERY_ON,style: Theme.of(context).textTheme.headlineMedium,),
                      Text("2020 01 19",style: Theme.of(context).textTheme.displayMedium,),
                    ],),



                  ],)

                ],),
              ),
            ),
          ),



        ),

        const SizedBox(height: 10,),

        Container(width: double.infinity,height: 120,//padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.blueColor)
          ),

          child: Material(
            color: Colors.transparent,
            child: InkWell(splashColor: AppColor.blueColor,
              onTap: ()=>Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const OrderDetailsScreen())),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row( crossAxisAlignment: CrossAxisAlignment.start, children: [

                  const CircleAvatar(
                    backgroundColor : Color(0xffF9D9E0),
                    child: Icon(Icons.local_activity,color: AppColor.pinkColor,),
                  ),

                  const SizedBox(width: 20,),

                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                    Text(AppConstants.PICKING_UP_ORDER,style: Theme.of(context).textTheme.titleMedium,),

                    const SizedBox(height: 10,),

                    Row(children: [
                      Text(AppConstants.PLACEED_ON,style: Theme.of(context).textTheme.headlineMedium,),
                      Text("2020 01 19",style: Theme.of(context).textTheme.displayMedium,),
                    ],),

                    Row(children: [
                      Text(AppConstants.PICKING_UP_ORDER,style: Theme.of(context).textTheme.headlineMedium,),
                      Text("2020 01 19",style: Theme.of(context).textTheme.displayMedium,),
                    ],),



                  ],)

                ],),
              ),
            ),
          ),



        ),





      ],),
    );
  }
}
