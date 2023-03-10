
import 'package:equatable/equatable.dart ';

abstract class FoodEvent extends  Equatable {
  const FoodEvent();
}

class FetchFoodDataEvent extends FoodEvent{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}