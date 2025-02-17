import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Senior Software Engineer'),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Senior Software Engineer'),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Senior Software Engineer'),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Senior Software Engineer'),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30,
                    end: 40,
                    text: 'Android|Flutter|Java|Kotlin',
                    gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30,
                    end: 25,
                    text: 'Android|Flutter|Java|Kotlin',
                    gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25,
                    end: 20,
                    text: 'Android|Flutter|Java|Kotlin',
                    gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40,
                    end: 30,
                    text: 'Android|Flutter|Java|Kotlin',
                    gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30,
                      end: 40,
                      text: 'Android|Flutter|Java|Kotlin',
                      gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30,
                      end: 25,
                      text: 'Android|Flutter|Java|Kotlin',
                      gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25,
                      end: 20,
                      text: 'Android|Flutter|Java|Kotlin',
                      gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40,
                      end: 30,
                      text: 'Android|Flutter|Java|Kotlin',
                      gradient: false),
                ),
              ))
      ],
    );
  }
}
