
import 'package:bloc/bloc.dart';
import 'package:blocfullcourse/bloc/comments/comments_event.dart';
import 'package:blocfullcourse/bloc/posts/post_bloc.dart';
import 'package:blocfullcourse/utils/enum.dart';

import '../../reposity/post_reporisty.dart';

class BlocPost extends Bloc<PostEvent,PostState>{
  PostReporitity postReporitity=PostReporitity();
  BlocPost(): super(const PostState()){
    on<PostFetch>(fetchPostAPi);

  }

  void fetchPostAPi(PostFetch events,Emitter<PostState>emit){
    postReporitity.fetch().then((value){


    }).onError(errors,stackTrace){
      emit(state.copyWith(postStatus:))
    }



  }

}
