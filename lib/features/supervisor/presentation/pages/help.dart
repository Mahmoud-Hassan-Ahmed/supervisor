import 'package:flutter/material.dart';
import 'package:supervisor/core/dialog/delete.dart';
import 'package:supervisor/core/widgets/appbar/with_title.dart';
import 'package:supervisor/core/widgets/bottom_bar/send_message.dart';
import 'package:supervisor/features/supervisor/presentation/widgets/chat/chat.dart';

class HelpCahtPage extends StatefulWidget {
  const HelpCahtPage({super.key});

  @override
  State<HelpCahtPage> createState() => _HelpCahtPageState();
}

class _HelpCahtPageState extends State<HelpCahtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: const BottomSendMessage(),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: AppBarWithTitle(
                context: context,
                title: 'التحدث مع الدعم الفني',
                callBack: () {
                  deleteDialog(
                      context,
                      'انهاء المحادثة',
                      'هل انت متأكد انك تريد إنهاء المحادثة ؟',
                      'نعم',
                      'لا', () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  }, () {
                    Navigator.pop(context);
                  }).show();
                }),
          ),
          const SliverFillRemaining(hasScrollBody: true, child: ChatWidget())
        ],
      ),
    );
  }
}
