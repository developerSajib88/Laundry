import 'package:my_laundry/domain/bottom_navigation_domain.dart';

class BottomNavigationDomainI extends BottomNavigationDomain{

  int index = 0;

  @override
  void changeNavigationIndex(int getIndex) {
    // TODO: implement changeNavigationIndex
    index = getIndex;
  }

  @override
  int myNavigationIndex() {
    // TODO: implement myNavigationIndex
    return index;
  }
}