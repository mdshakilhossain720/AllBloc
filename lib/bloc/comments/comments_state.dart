
import 'package:blocfullcourse/model/post_model.dart';
import 'package:equatable/equatable.dart';

import '../../utils/enum.dart';

class PostState extends Equatable{
  final postStatus poststatus;
  final List<PostModel> postList;
  final String message;

 const PostState({this.poststatus=postStatus.loading, this.postList=const <PostModel>[], this.message='',});

 PostState copyWith({postStatus? poststatus,List<PostModel>? postList,String? message}){
   return PostState(
     poststatus:poststatus ?? this.poststatus ,
     postList: postList ?? this.postList,
     message:message ?? this.message,
   );
}

  @override
  // TODO: implement props
  List<Object?> get props =>[poststatus,postList];

}
