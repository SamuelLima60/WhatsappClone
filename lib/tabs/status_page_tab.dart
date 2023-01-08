import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/list_tile_widget.dart';

class StatusPageView extends StatelessWidget {
  const StatusPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTileWidget(
          title: 'My status',
          subtitle: 'Tap to add status update',
          avatar:
              'https://www.shutterstock.com/image-vector/social-member-vector-icon-person-600w-1139787308.jpg',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Viewed updates'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ListTileWidget(
                title: 'User',
                subtitle: 'Today, 18:05 PM',
                avatar:
                    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
              );
            },
          ),
        ),
      ],
    );
  }
}
