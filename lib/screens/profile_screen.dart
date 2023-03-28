import 'package:flutter/material.dart';
import 'package:mobile_uninorte_project/widgets/custom_option_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xff262D38),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomOptionCard(
                      rutaImage: 'assets/images/profile_2.jpg',
                      title: 'Dua Lipa',
                      subtitle: '@dua',
                    ),
                  ],
                ),
                // Biografia
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Biografia',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Magnam aut harum quia. Incidunt illo necessitatibus ullam. Similique nam consectetur dolore facere modi eaque. Magni facere assumenda quae odit repellendus unde animi voluptatibus dolor.',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _CustomStat(title: '30 min', subtitle: 'por recorrido'),
                      _CustomStat(title: '20 min', subtitle: 'mejor tiempo'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Mi top
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Mi top de recorridos',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, 'track_history'),
                        child: const Text(
                          'Ver todos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) {
                        return const CustomOptionCard(
                          rutaImage: 'assets/images/profile.jpg',
                          title: 'Option',
                          subtitle: 'description',
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomStat extends StatelessWidget {
  const _CustomStat({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(subtitle),
      ],
    );
  }
}
