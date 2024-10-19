
import 'dart:math';

import 'package:image_picker/image_picker.dart';


class ImagePickerUitils{
  final ImagePicker picker= ImagePicker();
  Future<XFile?>camperCapture() async{
    final XFile? file =await picker.pickImage(source: ImageSource.camera);
    return file;
  }

  Future<XFile?>gallerCapture() async{
    final XFile? file =await picker.pickImage(source: ImageSource.gallery);
    return file;
  }
}