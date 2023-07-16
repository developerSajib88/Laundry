import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/presentation/screen/auth_screen/login_screen.dart';
import 'package:my_laundry/presentation/widget/custom_button.dart';
import 'package:my_laundry/utils/app_colors.dart';
import 'package:my_laundry/utils/app_images.dart';

import '../../../utils/app_constants.dart';

class AuthScreen extends HookConsumerWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.blueColor,
      body: SizedBox(width: double.infinity,height: double.infinity,
      child: SafeArea(
        child: Stack(children: [
          Positioned(top: 50,
              child: Image.asset(Images.clothFaded,)
          ),
          Container(width: double.infinity,height: double.infinity,
          child: Column(
            children: [

              const SizedBox(height: 90,),
              
              Image.asset(Images.illustration),

              const SizedBox(height: 15,),
              
              Expanded(
                child: Container(width: double.infinity,height: double.infinity,padding: const EdgeInsets.all(20),
                 decoration: const BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                 ),

                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                     Text(AppConstants.WELCOME_TO_LAUNDREE,style: Theme.of(context).textTheme.titleLarge,),
                     const SizedBox(height: 10,),
                     const Text(AppConstants.HEADLINE),

                     const SizedBox(height: 30,),


                     CustomButton(
                       onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=>const LogInScreen())),
                       text: AppConstants.LOG_IN,
                       backgroundColor: AppColor.whiteColor,
                       textColor: AppColor.blueColor,
                     ),

                     const SizedBox(height: 20,),

                     CustomButton(
                       onPressed: () {  },
                       text: AppConstants.CREATE_AN_ACCOUNT,
                     ),

                  ],),


                ),

              )
              
            ],
          ),)
        ],
        ),
      ),),
    );
  }
}
