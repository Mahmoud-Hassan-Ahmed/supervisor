import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/core/widgets/appbar/with_carousal.dart';
import 'package:supervisor/features/supervisor/presentation/bloc/start_trip/start_trip_bloc.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/card_trip.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/home/cards_home.dart';

import '../../../../core/widgets/bottom_bar/bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartTripBloc(),
      child: Scaffold(
        bottomNavigationBar: const BottomBarWidget(
          indexActive: 0,
        ),
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              // pinned: true,
              // floating: false,
              delegate: WithCarousalBar(
                  context: context, carousal: const CardTripHome()),
            ),
            const SliverFillRemaining(
                fillOverscroll: true,
                hasScrollBody: false,
                child: CardsHomeWidgets())
          ],
        ),
      ),
    );
  }
}
