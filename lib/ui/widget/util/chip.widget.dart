import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/config/tags.config.dart';
import 'package:portfolio/fonts/brand_icons_minified_icons.dart';
import 'package:portfolio/ui/helper/ui.helper.dart';
import 'package:url_launcher/url_launcher.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({
    Key? key,
    required this.tagId,
  }) : super(key: key);

  final String tagId;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  late Tag tag;

  @override
  void initState() {
    super.initState();

    tag = tags.firstWhere(
      (t) => t.id == widget.tagId,
      orElse: () => Tag(
        id: "null",
        label: "null",
        colorHex: "#ff00ff",
        icon: BrandIconsMinified.javascript,
        url: "http://example.com/",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color colorBg = UIHelper.getColorFromColorCode(tag.colorHex);
    Color colorText =
        colorBg.computeLuminance() > 0.5 ? Colors.black87 : Colors.white;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: colorBg,
                spreadRadius: -0.5,
                blurRadius: 3,
              ),
            ],
            color: colorBg,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                  right: 4,
                ),
                child: SizedBox(
                  child: Icon(
                    tag.icon,
                    size: 12,
                    color: colorText,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 6,
                  ),
                  child: Text(
                    tag.label,
                    style: TextStyle(
                      fontSize: 12,
                      color: colorText,
                      // height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          try {
            launch(tag.url);
          } catch (_) {
            assert(false);
          }
        },
      ),
    );
  }
}
