import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/core/di/bottom_navigation_di.dart';
import 'package:my_laundry/utils/app_colors.dart';

import '../../../core/provider/bottom_navigation_provider.dart';
import '../navigation_screen/home_screen.dart';


class BottomNavigationScreen extends HookConsumerWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final bottomNavigationState = ref.watch(bottomNavigationProvider);
    final bottomNavigationCtlr = ref.read(bottomNavigationProvider.notifier);

    return Scaffold(
      body: const SizedBox(width: double.infinity,height: double.infinity,
        child: HomeScreen(),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppColor.blueColor,
        onTap: (value){
         bottomNavigationCtlr.changeIndex(value);
         bottomNavigationCtlr.bottomNavigationIndex();
          },
        items: [
          Icon(Icons.home,size: 30,color: bottomNavigationState == 0 ? AppColor.whiteColor : AppColor.greyColor),
          Icon(Icons.pin_drop_rounded,size: 30,color: bottomNavigationState == 1? AppColor.whiteColor: AppColor.greyColor,),
          Icon(Icons.add,size: 30,color: bottomNavigationState == 2 ? AppColor.whiteColor: AppColor.greyColor,),
          Icon(Icons.favorite_rounded,size: 30,color: bottomNavigationState == 3 ? AppColor.whiteColor: AppColor.greyColor,),
          Icon(Icons.settings,size: 30,color: bottomNavigationState == 4 ? AppColor.whiteColor : AppColor.greyColor),
        ],
      )

    );
  }
}
