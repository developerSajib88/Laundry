import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/bottom_navigation_domain.dart';


class BottomNavigationNotifier extends StateNotifier<int>{
  ///This is Bottom Navigation domain class object for Dependency Injection
  BottomNavigationDomain _bottomNavigationDomain;
  BottomNavigationNotifier(this._bottomNavigationDomain):super(0);

  ///Change Index with riverpod State Notifier
  void changeIndex(int getIndex){
    _bottomNavigationDomain.changeNavigationIndex(getIndex);
  }

  void bottomNavigationIndex(){
    state = _bottomNavigationDomain.myNavigationIndex();
  }



}