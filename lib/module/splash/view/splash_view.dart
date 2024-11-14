import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/splash_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 400.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/id/8/8f/Logo_Universitas_Indraprasta_PGRI_%28UNINDRA%29.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        999.0,
                      ),
                    ),
                  ),
                )
                    .animate()
                    .fadeIn(duration: 2500.ms)
                    .shimmer(duration: 3000.ms)
                    .saturate(duration: 800.ms),
              )
            ],
          ),
        );
      },
    );
  }
}
