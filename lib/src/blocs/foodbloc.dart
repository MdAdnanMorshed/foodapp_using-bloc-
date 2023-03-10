
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/src/blocs/foodevent.dart';
import 'package:foodapp/src/blocs/foodstate.dart';

import '../models/food_model.dart';

class FoodBloc extends Bloc<FoodEvent,FoodState>{
  FoodBloc():super( FoodInitialState()){
    on<FetchFoodDataEvent>(_onFetchDataEvent);
  }
  void _onFetchDataEvent(
      FetchFoodDataEvent event,
      Emitter<FoodState> emitter,
      ) async{
          emitter(FoodLoadingState());
          await Future.delayed(const Duration(seconds: 2));
          bool isSucceed = Random().nextBool();
          if (isSucceed) {
            List<Food> dummyData = FoodGenerator.generateDummyFoods();
            emitter(FoodSuccessDataState(foodData: dummyData));
          } else {
            emitter( FoodErrorState());
          }

    
  }

}