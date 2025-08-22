import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/features/splash/presentaion/view/widgets/slidong_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnemation();
    navigateToHome();
  }




  @override
  void dispose() {
    super.dispose();
    animationController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed( const Duration(seconds: 4) , (){
      GoRouter.of(context).push('/homeView');
    });
  }

  void initSlidingAnemation() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slidingAnimation = Tween<Offset>(begin:const  Offset(0 , 5 ), end: Offset.zero ).animate(animationController);
    animationController.forward();
  }
}

