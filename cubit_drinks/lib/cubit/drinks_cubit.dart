// TODO 1: Create a class DrinksCubit and extend it with Cubit
// TODO 2: Initialize it with the first state

// TODO 5.1: Add a getter method to the DrinksCubit that returns only selectedDrinks
// This is a HotFix so it is not part of the video the solution can
// be found in the solution branch. The solution in the video will work
// but this solution is way better ;)

// TODO 6: Write a method inside the DrinksCubit that selects a drink

// TODO Optional: Override the onTransition Method to see how your cubit changes

import 'package:cubit/cubit.dart';
import '../models/drink.dart';

class DrinksCubit extends Cubit<List<Drink>> {
  DrinksCubit()
      : super([
          Drink("Water", false),
          Drink("Cuba Libre", false),
          Drink("Pina Colada", false),
          Drink("Havana Cola", false)
        ]);

  @override
  void onTransition(Transition<List<Drink>> transition) {
    print("On Transiotn on this cubit");
    super.onTransition(transition);
  }

  void selectDrink(Drink drink, bool selected) {
    var selectedDrinks = [...state];
    Drink selectedDrink =
        selectedDrinks.firstWhere((element) => element.name == drink.name);
    selectedDrink.selected = selected;
    emit(selectedDrinks);
  }
}
