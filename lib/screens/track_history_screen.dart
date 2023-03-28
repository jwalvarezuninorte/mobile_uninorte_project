import 'package:flutter/material.dart';
import 'package:mobile_uninorte_project/widgets/custom_rounded_image.dart';

class TrackHistoryScreen extends StatelessWidget {
  const TrackHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All routes'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xff262D38),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Dismissible(
                key: const Key('1'),
                onDismissed: (direction) {
                  // Remove the item from the data source.
                  // setState(() {
                  //   items.removeAt(index);
                  // });

                  // Then show a snackbar.
                  // ScaffoldMessenger.of(context)
                  //     .showSnackBar(SnackBar(content: Text('$item dismissed')));
                },
                child: const _CustomListTile(),
              ),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const _CustomListTile(),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomRoundedImage(
            imagePath: 'assets/images/profile.jpg',
            size: 60,
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'title',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('subtitle'),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.delete_outline,
            size: 40,
          ),
        ],
      ),
    );
  }
}
