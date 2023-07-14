

//part of '../di/bottom_navigation_di.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/notifier/bottom_navigation_notifier.dart';
import '../di/bottom_navigation_di.dart';

final bottomNavigationProvider = StateNotifierProvider<BottomNavigationNotifier,int>((ref)
=> BottomNavigationNotifier(myDependecy()));