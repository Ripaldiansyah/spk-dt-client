import 'package:flutter/material.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class MenuNavigationView extends StatelessWidget {
  const MenuNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuNavigationController>(
      init: MenuNavigationController(),
      builder: (controller) {
        controller.view = this;

        return QNavigation(
          pages: [
            const DashboardView(),
            if (role == "Admin") const AdminMenuView(),
            const PredictView(),
            const SettingsView(),
          ],
          menus: [
            NavigationMenu(
              icon: Icons.dashboard_outlined,
              label: "Dashboard",
              iconActive: Icons.dashboard,
            ),
            if (role == "Admin")
              NavigationMenu(
                icon: Icons.admin_panel_settings_outlined,
                label: "Admin",
                iconActive: Icons.admin_panel_settings,
              ),
            NavigationMenu(
              icon: Icons.recommend_outlined,
              label: "Rekomendasi",
              iconActive: Icons.recommend,
            ),
            NavigationMenu(
              icon: Icons.settings_outlined,
              label: "Pengaturan",
              iconActive: Icons.settings,
            ),
          ],
        );
      },
    );
  }
}
