import 'package:equatable/equatable.dart';

class FavouriteModel extends Equatable {

  final String id;
  final String value;
  final bool isDeleting=false;
  final bool isFavourite=false;

  FavouriteModel(
      {required this.id, required this.value, required this.isDeleting, required this.isFavourite,});

  FavouriteModel copyWith(
      {String? id, String? value, bool? isDeleting, bool? isFvouite}) {
    return FavouriteModel(id: id ?? this.id,
        value: value ?? this.value,
        isDeleting: isDeleting ?? this.isDeleting,
        isFavourite: isDeleting ?? this.isFavourite);
  }


  @override
  // TODO: implement props
  List<Object?> get props => [id,value,isDeleting,isFavourite];



}