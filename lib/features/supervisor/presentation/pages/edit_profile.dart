import 'package:flutter/material.dart';
import 'package:supervisor/core/dialog/update.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/save_bottom.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/profile/form.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomSaveWidget(
        onSave: () {
          updateDialog(context).show();
        },
        onCancel: () {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'الملف الشخصي',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          const SliverFillRemaining(
              hasScrollBody: true,
              child: FormProfileWidget(
                enable: true,
              ))
        ],
      ),
    );
  }
}
