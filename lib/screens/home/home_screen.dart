import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:motiv_hackathon_app/blocs/launch_navigator_bloc.dart';
import 'package:motiv_hackathon_app/blocs/user_repository_bloc.dart';
import 'package:motiv_hackathon_app/utils/enums.dart';
import 'package:motiv_hackathon_app/widgets/resume_carousel/resume_carousel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userRepositoryBloc = Provider.of<UserRepositoryBloc>(context);
    final launchNavigatorBloc = Provider.of<LaunchNavigatorBloc>(context);
    return Scaffold(
      body: ResumeCarousel(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userRepositoryBloc.repository.clear();
          launchNavigatorBloc.selectedPage = LaunchPages.Auth;
        },
      ),
    );
  }
}
