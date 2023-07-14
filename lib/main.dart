import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/application/app.dart';

import 'core/di/bottom_navigation_di.dart' as bottom_navigation_di;

void main()async{
   await bottom_navigation_di.intialize();
   runApp(const ProviderScope(child: MyApp()));
}