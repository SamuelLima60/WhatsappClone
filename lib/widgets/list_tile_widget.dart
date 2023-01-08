import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String avatar;
  final Widget? trailing;

  const ListTileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatar,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(avatar),
      ),
      subtitle: Text(subtitle, overflow: TextOverflow.ellipsis),
      trailing: trailing ?? const Text(''),
    );
  }
}
