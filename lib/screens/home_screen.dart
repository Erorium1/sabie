import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../l10n/app_localizations.dart';
import 'jobs_screen.dart';
import 'store_screen.dart';
import 'checkup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedWeek = 15;
  int _selectedNavIndex = 0;

  static const _pink = Color(0xFFE8847A);
  static const _lightPink = Color(0xFFF5A49E);
  static const _bgPink = Color(0xFFF4A09A);

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // ── Pink top section ──
          Expanded(
            flex: 11,
            child: Stack(
              children: [
                // Pink bg
                Container(
                  color: _bgPink,
                  width: double.infinity,
                ),

                // Decorative circles
                Positioned(
                  top: 60,
                  left: -30,
                  child: _Circle(size: 120, color: Colors.white.withOpacity(0.15)),
                ),
                Positioned(
                  top: 20,
                  right: 60,
                  child: _Circle(size: 80, color: Colors.white.withOpacity(0.12)),
                ),
                Positioned(
                  bottom: 120,
                  left: 20,
                  child: _Circle(size: 60, color: Colors.white.withOpacity(0.15)),
                ),
                Positioned(
                  bottom: 160,
                  right: 30,
                  child: _Circle(size: 45, color: Colors.white.withOpacity(0.18)),
                ),

                SafeArea(
                  child: Column(
                    children: [
                      // AppBar row
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.menu,
                                  color: Colors.white, size: 28),
                              onPressed: () {},
                            ),
                            _WeekBadge(week: _selectedWeek),
                          ],
                        ),
                      ),

                      // Week selector
                      SizedBox(
                        height: 56,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: 9,
                          itemBuilder: (_, i) {
                            final week = 11 + i;
                            final selected = week == _selectedWeek;
                            return GestureDetector(
                              onTap: () =>
                                  setState(() => _selectedWeek = week),
                              child: Container(
                                width: 64,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 4),
                                decoration: BoxDecoration(
                                  color: selected
                                      ? _pink
                                      : Colors.white.withOpacity(0.25),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      l.week,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '$week',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 12),

                      // "As big as..." title
                      Text(
                        l.asBigAs,
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Apple with blob + arrows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _NavArrow(
                            icon: Icons.chevron_left,
                            onTap: () => setState(() {
                              if (_selectedWeek > 1) _selectedWeek--;
                            }),
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: 180,
                            height: 180,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/homescreen/white_spot.png',
                                  width: 180,
                                  height: 180,
                                ),
                                Image.asset(
                                  'assets/homescreen/apple.png',
                                  width: 110,
                                  height: 110,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          _NavArrow(
                            icon: Icons.chevron_right,
                            onTap: () => setState(() {
                              if (_selectedWeek < 42) _selectedWeek++;
                            }),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Connect to Baby button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _lightPink,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          l.connectToBaby,
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ── White bottom section ──
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.journey,
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _JourneyCard(
                      title: l.firstKick,
                      subtitle: '${l.level} 1  🔒',
                      description: l.firstKickDesc,
                      color: const Color(0xFFFFF0EE),
                    ),
                    const SizedBox(height: 12),
                    _JourneyCard(
                      title: l.checkMood,
                      subtitle: '',
                      description: l.checkMoodDesc,
                      color: const Color(0xFFFFF0EE),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      // Bottom nav
      bottomNavigationBar: _BottomNav(
        selectedIndex: _selectedNavIndex,
        onTap: (i) {
          if (i == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const JobsScreen()));
          } else if (i == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const StoreScreen()));
          } else if (i == 3) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const CheckupScreen()));
          } else {
            setState(() => _selectedNavIndex = i);
          }
        },
        homeLabel: l.home,
        jobsLabel: l.jobs,
      ),
    );
  }
}

// ── Helpers ──

class _Circle extends StatelessWidget {
  final double size;
  final Color color;
  const _Circle({required this.size, required this.color});

  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      );
}

class _NavArrow extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _NavArrow({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.3),
          ),
          child: Icon(icon, color: Colors.white, size: 22),
        ),
      );
}

class _JourneyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final Color color;

  const _JourneyCard({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFE8847A),
                  ),
                ),
                if (subtitle.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.montserrat(
                        fontSize: 13, color: Colors.black54),
                  ),
                ],
                const SizedBox(height: 8),
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                      fontSize: 13, color: Colors.black87),
                ),
              ],
            ),
          ),
          // Placeholder for 3D illustration
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFE8847A).withOpacity(0.15),
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
  final String homeLabel;
  final String jobsLabel;
  final String storeLabel;
  final String checkupLabel;

  const _BottomNav({
    required this.selectedIndex,
    required this.onTap,
    required this.homeLabel,
    required this.jobsLabel,
    this.storeLabel = '',
    this.checkupLabel = '',
  });

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
          _NavItem(
            icon: Icons.home_rounded,
            label: homeLabel,
            selected: selectedIndex == 0,
            onTap: () => onTap(0),
          ),
          _NavItem(
            icon: Icons.work_outline_rounded,
            label: jobsLabel,
            selected: selectedIndex == 1,
            onTap: () => onTap(1),
          ),
          _NavItem(
            icon: Icons.storefront_outlined,
            label: storeLabel,
            selected: selectedIndex == 2,
            onTap: () => onTap(2),
          ),
          _NavItem(
            icon: Icons.medical_services_outlined,
            label: checkupLabel,
            selected: selectedIndex == 3,
            onTap: () => onTap(3),
          ),
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFFF0EE),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: _pink),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              if (label.isNotEmpty) ...[
                const SizedBox(width: 8),
                Text(
                  label,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
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
          shape: BoxShape.circle,
          color: Color(0xFFFFF0EE),
        ),
        child: Icon(icon, color: _pink, size: 22),
      ),
    );
  }
}

class _WeekBadge extends StatelessWidget {
  final int week;
  const _WeekBadge({required this.week});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.25),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Week',
            style: GoogleFonts.montserrat(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '$week',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }
}
