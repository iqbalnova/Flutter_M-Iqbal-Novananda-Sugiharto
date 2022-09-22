import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final List dataIcon = [
    Icons.pets,
    Icons.pregnant_woman,
    Icons.spatial_audio_off,
    Icons.rounded_corner,
    Icons.rowing,
    Icons.timeline,
    Icons.update,
    Icons.access_time_filled,
    Icons.back_hand,
    Icons.euro,
    Icons.g_translate,
    Icons.remove_shopping_cart,
    Icons.restore_page,
    Icons.speaker_notes_off,
    Icons.delete_forever,
    Icons.accessibility,
    Icons.check_circle_outline,
    Icons.delete_outline,
    Icons.done_outline,
    Icons.maximize,
    Icons.minimize,
    Icons.offline_bolt_rounded,
    Icons.swap_horizontal_circle,
    Icons.accessible_forward,
    Icons.pets,
    Icons.pregnant_woman,
    Icons.spatial_audio_off,
    Icons.rounded_corner,
    Icons.rowing,
    Icons.timeline,
    Icons.update,
    Icons.access_time_filled,
    Icons.back_hand,
    Icons.euro,
    Icons.g_translate,
    Icons.remove_shopping_cart,
    Icons.restore_page,
    Icons.speaker_notes_off,
    Icons.delete_forever,
    Icons.accessibility,
    Icons.check_circle_outline,
    Icons.delete_outline,
    Icons.done_outline,
    Icons.maximize,
    Icons.minimize,
    Icons.offline_bolt_rounded,
    Icons.swap_horizontal_circle,
    Icons.accessible_forward,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: GridView.count(
            crossAxisCount: 4,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 40,
            crossAxisSpacing: 40,
            children: dataIcon.map((val) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: ElevatedButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                            title: Text('Nyoba Alert Aja'),
                            content: Text('Betul'),
                          )),
                  child: Icon(val),
                  onLongPress: () => showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                            title: Text('Nyoba Longpress Aja'),
                            content: Text('Betul'),
                          )),
                ),
              );
            }).toList()));
  }
}
