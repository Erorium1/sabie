import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../l10n/app_localizations.dart';
import 'home_screen.dart';
import 'jobs_screen.dart';
import 'checkup_screen.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int _selectedTab = 0; // 0 = Shop, 1 = Yoga
  int _selectedNavIndex = 2;

  static const _pink = Color(0xFFE8847A);
  static const _bgPink = Color(0xFFF4A09A);

  final List<Map<String, dynamic>> _stores = [
    {
      'name': 'Karamel_aktau',
      'desc': 'Clothes for mom and babies',
      'rating': 4.5,
      'time': '30 - 35 min',
      'image': 'assets/store/Rectangle 29.png',
      'logo': 'assets/store/Group 21.png',
    },
    {
      'name': 'Baby World',
      'desc': 'Everything for your newborn',
      'rating': 4.8,
      'time': '20 - 30 min',
      'image': 'assets/store/Rectangle 29.png',
      'logo': 'assets/store/Group 22.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    final topics = [
      {'label': l.hospitalBag, 'image': 'assets/store/Group 21.png'},
      {'label': l.newbornNeeds, 'image': 'assets/store/Group 22.png'},
      {'label': l.breastFeeding, 'image': 'assets/store/Group 39.png'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // ── Pink header ──
          Container(
            color: const Color(0xFFFCECEC),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  // Top row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.menu,
                              color: Colors.black54, size: 26),
                          onPressed: () {},
                        ),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/store/Frame 154.png',
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => const Icon(
                                  Icons.person,
                                  color: _pink),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Title + location
                  Text(
                    l.myStore,
                    style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on,
                          size: 14, color: _pink),
                      const SizedBox(width: 2),
                      Text(
                        '33 microdistrict, 16',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(width: 2),
                      const Icon(Icons.chevron_right,
                          size: 16, color: Colors.black38),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Shop / Yoga tabs
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        _HeaderTab(
                          label: l.shop,
                          selected: _selectedTab == 0,
                          onTap: () => setState(() => _selectedTab = 0),
                        ),
                        _HeaderTab(
                          label: l.yoga,
                          selected: _selectedTab == 1,
                          onTap: () => setState(() => _selectedTab = 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),

          // ── White content ──
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
              children: [
                // Search bar
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      Icon(Icons.search, color: Colors.grey[400], size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: l.searchHint,
                            hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey[400], fontSize: 14),
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Topics header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l.topics,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const Icon(Icons.chevron_right,
                        color: Colors.black38, size: 22),
                  ],
                ),
                const SizedBox(height: 16),

                // Topics horizontal list
                SizedBox(
                  height: 140,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: topics.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 16),
                    itemBuilder: (_, i) => _TopicCard(
                      label: topics[i]['label']!,
                      imagePath: topics[i]['image']!,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // All stores header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l.allStores,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const Icon(Icons.chevron_right,
                        color: Colors.black38, size: 22),
                  ],
                ),
                const SizedBox(height: 16),

                // Store cards
                ..._stores.map((s) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _StoreCard(
                        name: s['name'],
                        desc: s['desc'],
                        rating: s['rating'],
                        time: s['time'],
                        imagePath: s['image'],
                        logoPath: s['logo'],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: _BottomNav(
        selectedIndex: _selectedNavIndex,
        onTap: (i) {
          if (i == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const HomeScreen()));
          } else if (i == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const JobsScreen()));
          } else if (i == 3) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const CheckupScreen()));
          } else {
            setState(() => _selectedNavIndex = i);
          }
        },
        l: l,
      ),
    );
  }
}

// ── Widgets ──

class _HeaderTab extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _HeaderTab(
      {required this.label, required this.selected, required this.onTap});

  static const _pink = Color(0xFFE8847A);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? _pink : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}

class _TopicCard extends StatelessWidget {
  final String label;
  final String imagePath;

  const _TopicCard({required this.label, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(Icons.shopping_bag,
                  color: Color(0xFFE8847A), size: 36),
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 90,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _StoreCard extends StatelessWidget {
  final String name;
  final String desc;
  final double rating;
  final String time;
  final String imagePath;
  final String logoPath;

  const _StoreCard({
    required this.name,
    required this.desc,
    required this.rating,
    required this.time,
    required this.imagePath,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Store banner image
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                height: 140,
                color: const Color(0xFFF5E6E6),
                child: const Center(
                    child: Icon(Icons.store, color: Color(0xFFE8847A), size: 40)),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Logo
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFF5F5F5),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      logoPath,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(Icons.store,
                          size: 20, color: Color(0xFFE8847A)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  size: 14, color: Colors.amber),
                              const SizedBox(width: 2),
                              Text(
                                rating.toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Icon(Icons.directions_car,
                              size: 13, color: Colors.black38),
                          const SizedBox(width: 4),
                          Text(
                            time,
                            style: GoogleFonts.montserrat(
                                fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        desc,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final AppLocalizations l;

  const _BottomNav({
    required this.selectedIndex,
    required this.onTap,
    required this.l,
  });

  static const _pink = Color(0xFFE8847A);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(icon: Icons.home_rounded, label: l.home, selected: selectedIndex == 0, onTap: () => onTap(0)),
          _NavItem(icon: Icons.work_outline_rounded, label: l.jobs, selected: selectedIndex == 1, onTap: () => onTap(1)),
          _NavItem(icon: Icons.storefront_outlined, label: l.myStore, selected: selectedIndex == 2, onTap: () => onTap(2)),
          _NavItem(icon: Icons.medical_services_outlined, label: l.checkup, selected: selectedIndex == 3, onTap: () => onTap(3)),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  static const _pink = Color(0xFFE8847A);

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF0EE),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: _pink),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
            ],
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xFFFFF0EE)),
        child: Icon(icon, color: _pink, size: 22),
      ),
    );
  }
}
