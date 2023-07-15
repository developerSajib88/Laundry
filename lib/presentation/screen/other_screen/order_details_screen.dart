import 'package:flutter/material.dart';
import 'package:my_laundry/presentation/widget/background_widget.dart';
import 'package:my_laundry/presentation/widget/order_item_view.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_images.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              InkResponse(
                  onTap: ()=> Navigator.of(context).pop() ,
                  child: const Icon(Icons.arrow_back_ios,color: Colors.white,)
              ),

              const SizedBox(height: 10,),

              const Text(AppConstants.DETAILS_ABOUT,style: TextStyle(color: AppColor.backgroundColor,fontSize: 20,fontWeight: FontWeight.w500),),
              const Text("Order #521",style: TextStyle(color: AppColor.whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),

              const SizedBox(height: 30,),

              Container(width: double.infinity,height: 450,padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child:  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                  Text(AppConstants.ORDER_DETAILS,style: Theme.of(context).textTheme.titleLarge,),
                  Text(AppConstants.WASHING_AND_FOLDING,style: Theme.of(context).textTheme.displayLarge,),


                  Expanded(
                      child: Container(width: double.infinity,height: double.infinity,
                      child: ListView.builder(
                        itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index){
                            return const OrderItemView();
                          }
                      ),)
                  ),


                  Text(AppConstants.IRONING,style: Theme.of(context).textTheme.displayLarge,),

                  const OrderItemView(),

                  const Divider(),


                  Row(children: [
                    Text(AppConstants.SUBTOTAL,style: Theme.of(context).textTheme.titleLarge,),
                    const Spacer(),
                    Text("\$ 200.00",style: Theme.of(context).textTheme.titleMedium,),
                  ],),

                  Row(children: [
                    Text(AppConstants.DELIVERY,style: Theme.of(context).textTheme.titleLarge,),
                    const Spacer(),
                    Text("\$ 220.00",style: Theme.of(context).textTheme.titleMedium,),
                  ],),

                  const Divider(),

                  Row(children: [
                    Text(AppConstants.DELIVERY,style: Theme.of(context).textTheme.titleLarge,),
                    const Spacer(),
                    Text("\$ 420.00",style: Theme.of(context).textTheme.titleMedium,),
                  ],),


                ],),),


              const SizedBox(height: 20,),


              Stack(
                children: [
                  Container(width: double.infinity,height: 120,padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,borderRadius: BorderRadius.circular(10)
                  ),

                   child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                     Text(AppConstants.YOUR_CLOTH_IS_WASHING,style: Theme.of(context).textTheme.titleLarge,),
                     Text(AppConstants.ESTIMATET_DELIVERY,style: Theme.of(context).textTheme.displayLarge,),
                     Text("12-03-2023",style: Theme.of(context).textTheme.titleMedium,)

                   ],),

                  ),

                  Positioned(right: 10,bottom: 10,
                      child: Image.asset(Images.appLogo,width: 80,height: 80,fit: BoxFit.fill,)
                  )
                ],
              )

            ],),
          ),
        ),
      ),
    );
  }
}
