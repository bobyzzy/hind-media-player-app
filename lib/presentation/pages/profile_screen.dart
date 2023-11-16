import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hind_app/presentation/theme/app_colors.dart';
import 'package:hind_app/presentation/theme/app_fonts.dart';
import '../widgets/components/components.dart';

@RoutePage(name: "ProfileScreenRoute")
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kabinet', style: AppFonts.MEDIUM_18),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Log out",
              style: AppFonts.REGULAR_18,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/01.jpg'))),
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(10),
                        Text('Malika', style: AppFonts.REGULAR_18),
                        const Gap(20),
                        Text(
                          "+998 99 123 45 67",
                          style: AppFonts.MEDIUM_14
                              .copyWith(color: AppColors.TEXT_GRAY_SHADE_COLOR),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              CustomButton(
                hasIcon: false,
                color: const Color.fromRGBO(46, 45, 47, 1),
                labelColor: Colors.white,
                textButton: "Profil Sozlamalar",
                onTap: () {},
              ),
              const Gap(60),
              //TODO: Нужно оптимизировать
              ListTile(
                title: Text('Tanlangan Filmlar', style: AppFonts.REGULAR_16),
                trailing: const Icon(Icons.arrow_forward_ios),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(30),
              ListTile(
                title: Text('Sozlamalar', style: AppFonts.REGULAR_16),
                trailing: const Icon(Icons.arrow_forward_ios),
                titleAlignment: ListTileTitleAlignment.center,
              ),
              const Gap(30),
              ListTile(
                title: Text('Yordam kerakmi?', style: AppFonts.REGULAR_16),
                trailing: const Icon(Icons.arrow_forward_ios),
                titleAlignment: ListTileTitleAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ChewieDemo extends StatefulWidget {
//   const ChewieDemo({super.key});
//
//   @override
//   State<ChewieDemo> createState() => _ChewieDemoState();
// }
//
// class _ChewieDemoState extends State<ChewieDemo> {
//   TargetPlatform? targetPlatform;
//   late VideoPlayerController _videoPlayerController1;
//   late VideoPlayerController _videoPlayerController2;
//
//   ChewieController? _chewieController;
//   int? bufferDelay;
//
//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _videoPlayerController1.dispose();
//     _videoPlayerController2.dispose();
//     _chewieController?.dispose();
//   }
//
//   List<String> src = [
//     "https://assets.mixkit.co/videos/preview/mixkit-spinning-around-the-earth-29351-large.mp4",
//     "https://assets.mixkit.co/videos/preview/mixkit-daytime-city-traffic-aerial-view-56-large.mp4",
//     "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4"
//   ];
//
//   Future<void> initializePlayer() async {
//     _videoPlayerController1 =
//         VideoPlayerController.networkUrl(Uri.parse(src[currPlayIndex]));
//     _videoPlayerController2 =
//         VideoPlayerController.networkUrl(Uri.parse(src[currPlayIndex]));
//
//     await Future.wait([
//       _videoPlayerController1.initialize(),
//       _videoPlayerController2.initialize(),
//     ]);
//
//     _createChewieController();
//     setState(() {});
//   }
//
//   void _createChewieController() {
//     final subtitles = [
//       Subtitle(
//         index: 0,
//         start: Duration.zero,
//         end: const Duration(seconds: 10),
//         text: const TextSpan(
//           children: [
//             TextSpan(
//               text: 'Hello',
//               style: TextStyle(color: Colors.red, fontSize: 22),
//             ),
//             TextSpan(
//               text: ' from ',
//               style: TextStyle(color: Colors.green, fontSize: 20),
//             ),
//             TextSpan(
//               text: 'subtitles',
//               style: TextStyle(color: Colors.blue, fontSize: 18),
//             )
//           ],
//         ),
//       ),
//       Subtitle(
//         index: 0,
//         start: const Duration(seconds: 10),
//         end: const Duration(seconds: 20),
//         text: 'hello',
//       ),
//     ];
//
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController1,
//       autoPlay: true,
//       looping: true,
//       progressIndicatorDelay:
//           bufferDelay != null ? Duration(milliseconds: bufferDelay!) : null,
//       additionalOptions: (context) {
//         return <OptionItem>[
//           OptionItem(
//               onTap: toggleVideo,
//               iconData: Icons.live_tv_sharp,
//               title: 'Toggle video src'),
//         ];
//       },
//       subtitle: Subtitles(subtitles),
//       subtitleBuilder: (context, subtitle) {
//         return Container(
//           padding: const EdgeInsets.all(16),
//           child: subtitle is InlineSpan
//               ? RichText(text: subtitle)
//               : Text(
//                   subtitle.toString(),
//                   style: const TextStyle(color: Colors.black),
//                 ),
//         );
//       },
//       hideControlsTimer: const Duration(seconds: 1),
//     );
//   }
//
//   int currPlayIndex = 0;
//
//   Future<void> toggleVideo() async {
//     await _videoPlayerController1.pause();
//     currPlayIndex == 1;
//     if (currPlayIndex >= src.length) {
//       currPlayIndex = 0;
//     }
//     await initializePlayer();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: Center(
//               child: _chewieController != null &&
//                       _chewieController!
//                           .videoPlayerController.value.isInitialized
//                   ? Chewie(
//                       controller: _chewieController!,
//                     )
//                   : const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircularProgressIndicator(),
//                         Gap(20),
//                         Text('loading'),
//                       ],
//                     )),
//         ),
//       ],
//     );
//   }
// }
