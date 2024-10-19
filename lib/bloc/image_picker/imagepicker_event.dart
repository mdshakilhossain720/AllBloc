
import 'package:equatable/equatable.dart';

abstract class ImagePickerEvents extends Equatable{
 const ImagePickerEvents();

  @override
 List<Object> get props=>[];

}

class CamerCapsutre extends ImagePickerEvents{}

class GallerImagePicker extends ImagePickerEvents{}

