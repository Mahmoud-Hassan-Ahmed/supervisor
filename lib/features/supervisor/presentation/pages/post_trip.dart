import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:supervisor/features/supervisor/presentation/bloc/post_trip/post_trip_bloc.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/past_trip/card_trip.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/past_trip/horizental_slider.dart';

class PostTripPage extends StatefulWidget {
  const PostTripPage({super.key});

  @override
  State<PostTripPage> createState() => _PostTripPageState();
}

class _PostTripPageState extends State<PostTripPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostTripBloc(),
      child: Scaffold(
        bottomNavigationBar: const BottomBarWidget(indexActive: 3),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: AppBarWithTitle(
                    context: context,
                    title: 'رحلات سابقة',
                    callBack: () {
                      Navigator.pop(context);
                    })),
            SliverFillRemaining(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  SizedBox(
                    height: 15,
                  ),
                  HorizontalWidget(),
                  CardTripWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
