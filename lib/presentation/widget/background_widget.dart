import 'package:flutter/material.dart';
import 'package:my_laundry/utils/app_images.dart';

import '../../utils/app_colors.dart';

class BackgroundWidget extends StatelessWidget {

  Widget? child;

  BackgroundWidget({
    Key? key,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: double.infinity,color: AppColor.blueColor,
     child: Stack(children: [

       Positioned(right: 0,top: -30,
           child: Image.asset(Images.washingMachine,)
       ),

       SafeArea(
         child: SizedBox(width: double.infinity,height: double.infinity,
           child: child,
         ),
       )

     ],
     )
    );
  }
}
