import 'package:flutter/material.dart';

import '../widgets/list_tile_widget.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return const ListTileWidget(
          title: 'ADS FAM',
          subtitle: '+55 85 95555-5555 pdc, obg',
          avatar: 'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
          trailing: Text('8:05 PM'),
        );
      },
    );
  }
}
