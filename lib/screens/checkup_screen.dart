import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../l10n/app_localizations.dart';
import 'home_screen.dart';
import 'jobs_screen.dart';
import 'store_screen.dart';

class CheckupScreen extends StatefulWidget {
  const CheckupScreen({super.key});

  @override
  State<CheckupScreen> createState() => _CheckupScreenState();
}

class _CheckupScreenState extends State<CheckupScreen> {
  int _selectedTab = 0; // 0 = To consult, 1 = My bookings
  int _selectedNavIndex = 3;

  static const _pink = Color(0xFFE8847A);

  final List<Map<String, dynamic>> _doctors = [
    {
      'name': 'Nurgul Zhusupova',
      'specialty': 'Obstetrician-Gynecologist',
      'room': '34A-6',
      'active': true,
    },
    {
      'name': 'Maral Akimova',
      'specialty': 'Cardiologist',
      'room': '16-11',
      'active': false,
    },
    {
      'name': 'Nurzhamal Erenova',
      'specialty': 'Nephrologist',
      'room': '16-11',
      'active': false,
    },
    {
      'name': 'Gulzhan Zhyilkishiyeva',
      'specialty': 'Therapist',
      'room': '12-3',
      'active': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: Column(
        children: [
          // ── Light header ──
          Container(
            color: const Color(0xFFFCECEC),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  // Top row: menu + avatar
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
                              'assets/check/Frame 154.png',
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

                  // To consult / My bookings tabs
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          _HeaderTab(
                            label: l.toConsult,
                            selected: _selectedTab == 0,
                            onTap: () => setState(() => _selectedTab = 0),
                          ),
                          _HeaderTab(
                            label: l.myBookings,
                            selected: _selectedTab == 1,
                            onTap: () => setState(() => _selectedTab = 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ── White content ──
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
              children: [
                // "Search for the doctor you need"
                Text(
                  l.searchDoctorTitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),

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
                            hintText: l.searchDoctorHint,
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

                // "Doctors in your hospital"
                Text(
                  l.doctorsInHospital,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),

                // Doctor cards
                ..._doctors.map((d) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: _DoctorCard(
                        name: d['name'],
                        specialty: d['specialty'],
                        room: d['room'],
                        active: d['active'],
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
          } else if (i == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const StoreScreen()));
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
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}

class _DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String room;
  final bool active;

  const _DoctorCard({
    required this.name,
    required this.specialty,
    required this.room,
    required this.active,
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
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Avatar
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFE0E0E0),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/check/Frame 20.png',
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) =>
                    const Icon(Icons.person, size: 32, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 14),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  specialty,
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  room,
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          // Arrow button
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? const Color(0xFF4CAF50) : const Color(0xFFFFC107),
            ),
            child: const Icon(Icons.arrow_forward,
                color: Colors.white, size: 18),
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
