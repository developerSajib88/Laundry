
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_laundry/domain/bottom_navigation_domain.dart';
import 'package:my_laundry/infrastructure/bottom_navigation_domain_i.dart';

import '../../application/notifier/bottom_navigation_notifier.dart';
//part '../../../core/provider/bottom_navigation_provider.dart';


final myDependecy = GetIt.instance;

Future<void> intialize()async{
  myDependecy.registerLazySingleton<BottomNavigationDomain>(() => BottomNavigationDomainI());
}