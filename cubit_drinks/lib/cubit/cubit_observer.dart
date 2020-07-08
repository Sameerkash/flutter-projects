// TODO Optional 2: Create a Observer and extend it from CubitObserver
// TODO Optional 3: Override the onTransition method

import 'package:cubit/cubit.dart';

class MainCubitObserver extends CubitObserver {
  @override
  void onTransition(Cubit cubit, Transition transition) {
    print("General Watcher $transition"); 
    super.onTransition(cubit, transition);
  }
}
