import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/presentation/screen/navigation_screen/home_screen.dart';
import 'package:my_laundry/presentation/widget/background_widget.dart';
import 'package:my_laundry/presentation/widget/custom_button.dart';
import 'package:my_laundry/presentation/widget/custom_textform.dart';
import 'package:my_laundry/utils/app_colors.dart';
import 'package:my_laundry/utils/app_constants.dart';
import 'package:my_laundry/utils/font_style.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LogInScreen extends HookConsumerWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

     final emailController = useTextEditingController();
     final passwordController = useTextEditingController();

    return Scaffold(
      body: BackgroundWidget(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
              onPressed: ()=>Navigator.of(context).pop(),
              icon : const Icon(Icons.arrow_back_ios,color: AppColor.whiteColor,)
          ),

          const SizedBox(height: 20,),

          Padding(padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Text(AppConstants.LOG_IN_T0_YOUR_ACCOUNT,style: FontStyle.subHeaderTextStyle,)
          ),

          const SizedBox(height: 50,),

          Expanded(
            child: Container(width: double.infinity,height: double.infinity,padding: const EdgeInsets.all(30),
             decoration: const BoxDecoration(
              color: AppColor.whiteColor,borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30),
                 topRight: Radius.circular(30)
             )
             ),

             child: SingleChildScrollView(
               child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                 Text(AppConstants.EMAIL,style: Theme.of(context).textTheme.titleLarge,),
                 const SizedBox(height: 5,),
                 CustomTextForm(
                  controller: emailController,
                  labelText: "Email",
                  textInputType: TextInputType.emailAddress,
                  validation: (value) {
                    if(value!.toString().isEmpty){
                      return "This field is required!";
                    }
                  },
                ),


                 const SizedBox(height: 20,),


                 Text(AppConstants.PASSWORD,style: Theme.of(context).textTheme.titleLarge,),
                 const SizedBox(height: 5,),
                 CustomTextForm(
                   controller: passwordController,
                   labelText: "Password",
                   textInputType: TextInputType.visiblePassword,
                   validation: (value) {
                     if(value!.toString().isEmpty){
                       return "This field is required!";
                     }else if(value!.toString().length < 6){
                       return "Enter Your Valid Password";
                     }
                   },
                 ),


                 Row(children: [
                   const Spacer(),
                   TextButton(
                       onPressed: (){},
                       child: const Text(AppConstants.FORGET_PASSWORD,style: TextStyle(color: AppColor.blueColor,fontWeight: FontWeight.bold),)
                   )
                 ],),


                 CustomButton(
                     onPressed: ()=> Navigator.push(context, CupertinoPageRoute(builder: (context)=> const HomeScreen())),
                     text: AppConstants.LOG_IN
                 )


            ],),
             ),
            ),
          )


        ],),
      ),
    );
  }
}
