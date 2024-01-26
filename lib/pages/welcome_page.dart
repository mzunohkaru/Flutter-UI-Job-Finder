import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_job_finder/pages/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Lottie.asset(
                  'assets/animations/lottie_1.json',
                  controller: _controller,
                  repeat: true,
                  onLoaded: (composition) {
                    _controller
                      ..duration = composition.duration
                      // ..forward().then((value) => _controller.reset());
                      ..forward().whenComplete(() => _controller.repeat());
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Secure your Future\nwith your dream job',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1.5),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Here you can find a job according with your mind thinking and your degree. You can find your dream here with just few clicks',
                style: TextStyle(height: 1.5, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary),
                  child: const Text(
                    'Explore Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
