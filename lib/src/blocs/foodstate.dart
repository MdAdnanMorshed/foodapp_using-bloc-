import 'package:equatable/equatable.dart';

import '../models/food_model.dart';

abstract class FoodState extends Equatable{
  const  FoodState();
}

class FoodInitialState  extends FoodState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FoodLoadingState extends FoodState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class FoodErrorState extends FoodState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class FoodSuccessDataState extends FoodState{
  final List<Food> foodData;
  const  FoodSuccessDataState({ required this.foodData});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}