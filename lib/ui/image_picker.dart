
import 'dart:io';

import 'package:blocfullcourse/bloc/image_picker/imagepicker_bloc.dart';
import 'package:blocfullcourse/bloc/image_picker/imagepicker_event.dart';
import 'package:blocfullcourse/bloc/image_picker/imagepicker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePicker extends StatelessWidget {
  const ImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"),),
      body: Center(
        child: BlocBuilder<ImagePickerBloc,ImagePickerState>(builder: (context,state){
          if(state.file == null){
            return InkWell(
              onTap: (){
                context.read<ImagePickerBloc>().add(CamerCapsutre());
              },
              child: CircleAvatar(
                child: Icon(Icons.camera),
              ),
            );

          }else{
            return Image.file(File(state.file!.path.toString()));
          }

        }),
      ),


    );
  }
}
