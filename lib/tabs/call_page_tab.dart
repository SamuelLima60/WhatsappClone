import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/list_tile_widget.dart';

class CallPageView extends StatelessWidget {
  const CallPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListTileWidget(
          title: 'Create call link',
          subtitle: 'Share a link for your WhatsApp call',
          avatar:
              'https://cdn.icon-icons.com/icons2/1095/PNG/512/1485476104-artboard-1_78547.png',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Recent'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ListTileWidget(
                title: 'User',
                subtitle: '(2) 12/25/22, 5:02 PM',
                avatar:
                    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
                trailing: Icon(
                  Icons.phone,
                  color: Colors.tealAccent,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
