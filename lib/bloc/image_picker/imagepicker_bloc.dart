
import 'package:blocfullcourse/bloc/image_picker/imagepicker_event.dart';
import 'package:blocfullcourse/bloc/image_picker/imagepicker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvents,ImagePickerState>{
  final ImagePickerUitils imagePickerUitils;
  ImagePickerBloc(this.imagePickerUitils):super(ImagePickerState()){
    on<CamerCapsutre>(camerCapture);

  }

  Future<void> camerCapture(CamerCapsutre events,Emitter<ImagePickerState>states) async {
    XFile? file =await imagePickerUitils.camperCapture();
    emit(state.copyWith(file:file));

  }
}
