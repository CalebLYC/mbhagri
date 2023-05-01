import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mbhagri/models/Notification.dart' as not;

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});
  final not.Notification notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.all(2),
      child: Card(
        color: notification.isSeen
            ? Color.fromARGB(255, 209, 245, 210)
            : const Color.fromARGB(255, 71, 107, 143),
        child: ListTile(
          leading: ClipOval(
            child: Container(
              width: 80,
              height: 80,
              child: CircleAvatar(
                child: CachedNetworkImage(
                  imageUrl:
                      "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y",
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(
              notification.content,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 15,
              ),
            ),
          ),
          subtitle: Text(notification.date.toLocal().toString()),
          trailing: PopupMenuButton(
            icon: const Icon(Icons.more_horiz, size: 30),
            itemBuilder: (context) => <PopupMenuEntry<String>>[
              const PopupMenuItem(
                value: 'delete',
                child: Text('Supprimer cette notification'),
              ),
              const PopupMenuItem(
                value: 'disable',
                child: Text('Désactiver les notifications'),
              ),
              const PopupMenuItem(
                value: 'report',
                child: Text('Signaler un problème'),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'delete':
                  //
                  break;
                case 'disable':
                  //
                  break;
                case 'report':
                  //
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
