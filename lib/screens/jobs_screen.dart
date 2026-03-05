import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../l10n/app_localizations.dart';
import 'home_screen.dart';
import 'store_screen.dart';
import 'checkup_screen.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  int _selectedTab = 0;
  int _selectedNavIndex = 1;

  static const _pink = Color(0xFFE8847A);
  static const _lightPink = Color(0xFFF5A49E);
  static const _bgPink = Color(0xFFF4A09A);

  final List<Map<String, dynamic>> _jobs = [
    {
      'title': 'Graphic designer',
      'salary': '150 000–250 000',
      'location': 'Online, Aktau',
      'saved': false,
    },
    {
      'title': 'Business assistant',
      'salary': '250 000–300 000',
      'location': 'Online, Astana',
      'saved': false,
    },
    {
      'title': 'Manager',
      'salary': '100 000–170 000',
      'location': 'Online, Almaty',
      'saved': false,
    },
    {
      'title': 'Content creator',
      'salary': '80 000–150 000',
      'location': 'Online',
      'saved': false,
    },
  ];

  String get _userName {
    final user = FirebaseAuth.instance.currentUser;
    if (user?.displayName != null && user!.displayName!.isNotEmpty) {
      return user.displayName!;
    }
    return user?.email?.split('@')[0] ?? 'User';
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // ── Pink header ──
          Container(
            color: _bgPink,
            child: SafeArea(
              bottom: false,
              child: Stack(
                children: [
                  // Decorative circles
                  Positioned(
                    top: 20,
                    left: -20,
                    child: _Circle(size: 100, color: Colors.white.withOpacity(0.15)),
                  ),
                  Positioned(
                    top: 10,
                    right: 80,
                    child: _Circle(size: 60, color: Colors.white.withOpacity(0.12)),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top row: menu + avatar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.menu, color: Colors.white, size: 28),
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
                                  'assets/jobs/Frame 154.png',
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, __, ___) => const Icon(
                                    Icons.person,
                                    color: _pink,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Hi + penguin row
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Left: text block
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${l.hi}, $_userName!',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    l.maternityWork,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      color: Colors.white.withOpacity(0.9),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 12),

                                  // Speech bubble
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.08),
                                          blurRadius: 8,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      l.comfortText,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),

                            // Right: penguin
                            Image.asset(
                              'assets/jobs/Frame 154.png',
                              width: 130,
                              height: 130,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) =>
                                  const SizedBox(width: 130, height: 130),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ── White content ──
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: Colors.grey[400],
                                      fontSize: 14,
                                    ),
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
                        const SizedBox(height: 16),

                        // Tabs
                        Row(
                          children: [
                            _TabChip(
                              label: l.newTab,
                              selected: _selectedTab == 0,
                              onTap: () => setState(() => _selectedTab = 0),
                            ),
                            const SizedBox(width: 10),
                            _TabChip(
                              label: l.savedTab,
                              selected: _selectedTab == 1,
                              onTap: () => setState(() => _selectedTab = 1),
                            ),
                            const SizedBox(width: 10),
                            _TabChip(
                              label: l.sentTab,
                              selected: _selectedTab == 2,
                              onTap: () => setState(() => _selectedTab = 2),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Jobs available header
                        Text(
                          l.jobsAvailable,
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),

                  // Job list
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                      itemCount: _jobs.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, i) {
                        final job = _jobs[i];
                        return _JobCard(
                          title: job['title'],
                          salary: '${job['salary']} ${l.tg}',
                          location: job['location'],
                          saved: job['saved'],
                          onSave: () => setState(() {
                            _jobs[i]['saved'] = !_jobs[i]['saved'];
                          }),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom nav
      bottomNavigationBar: _BottomNav(
        selectedIndex: _selectedNavIndex,
        onTap: (i) {
          if (i == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const HomeScreen()));
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
        jobsLabel: l.jobs,
        homeLabel: l.home,
        storeLabel: l.myStore,
        checkupLabel: l.checkup,
      ),
    );
  }
}

// ── Widgets ──

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

class _TabChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _TabChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  static const _pink = Color(0xFFE8847A);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? _pink : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: selected ? _pink : const Color(0xFFE0E0E0),
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: selected ? Colors.white : Colors.black54,
          ),
        ),
      ),
    );
  }
}

class _JobCard extends StatelessWidget {
  final String title;
  final String salary;
  final String location;
  final bool saved;
  final VoidCallback onSave;

  const _JobCard({
    required this.title,
    required this.salary,
    required this.location,
    required this.saved,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  salary,
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  location,
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onSave,
                child: Icon(
                  saved ? Icons.favorite : Icons.favorite_border,
                  color: const Color(0xFFE8847A),
                  size: 22,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFC107),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final String jobsLabel;
  final String homeLabel;
  final String storeLabel;
  final String checkupLabel;

  const _BottomNav({
    required this.selectedIndex,
    required this.onTap,
    required this.jobsLabel,
    required this.homeLabel,
    this.storeLabel = '',
    this.checkupLabel = '',
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
                  shape: BoxShape.circle,
                  color: _pink,
                ),
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
