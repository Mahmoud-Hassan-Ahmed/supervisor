import 'package:flutter/material.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/password/enter_code.dart';

class ConfirmPhonePage extends StatefulWidget {
  const ConfirmPhonePage({super.key});

  @override
  State<ConfirmPhonePage> createState() => _ConfirmPhonePageState();
}

class _ConfirmPhonePageState extends State<ConfirmPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: AppBarWithTitle(
                  context: context,
                  title: 'تفعيل كلمة المرور',
                  callBack: () {
                    Navigator.pop(context);
                  })),
          const SliverFillRemaining(
              hasScrollBody: true, child: CodeListWidget()),
        ],
      ),
    );
  }
}
