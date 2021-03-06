import 'package:flutter/material.dart';
import 'package:ukroboronprom/data/weapon_data.dart';
import 'package:ukroboronprom/main.dart';
import 'package:ukroboronprom/widgets/carousel.dart';
import 'package:ukroboronprom/widgets/smooth_scroll.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class WeaponPage extends StatefulWidget {
  const WeaponPage({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  final WeaponData weapon;

  @override
  State<WeaponPage> createState() => _WeaponPageState();
}

class _WeaponPageState extends State<WeaponPage> {
  late final YoutubePlayerController? _controller =
      widget.weapon.youtubeVideoId == null
          ? null
          : YoutubePlayerController(
              initialVideoId: widget.weapon.youtubeVideoId!,
              params: const YoutubePlayerParams(
                showControls: true,
                showFullscreenButton: true,
              ),
            );

  @override
  void dispose() {
    _controller?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var galleryWidth = MediaQuery.of(context).size.width * (isMobile ? 1 : 0.4);
    var galleryHeight = galleryWidth * 3 / 4;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 24),
          child: SmoothListView(
            items: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(2),
                    splashRadius: 24,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Container(
                margin: !isMobile ? null : const EdgeInsets.only(left: 12),
                child: Text(
                  widget.weapon.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: galleryWidth,
                    height: galleryHeight,
                    margin: isMobile ? null : EdgeInsets.only(right: 24),
                    child: Carousel(
                      items: widget.weapon.images
                          .map(
                            (e) => (w) => Image(
                                  image: e,
                                  width: w.width,
                                  height: w.height,
                                  fit: BoxFit.cover,
                                ),
                          )
                          .toList(),
                    ),
                  ),
                  if (!isMobile)
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: buildFullCharacteristics(),
                      ),
                    )
                ],
              ),
              if (isMobile)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: buildFullCharacteristics(),
                ),
              const SizedBox(height: 20),
              if (widget.weapon.youtubeVideoId != null)
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: const Text(
                    "?????????? ??????????",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Noto Sans",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              if (widget.weapon.youtubeVideoId != null)
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        (isMobile ? 0.05 : 0.25),
                  ),
                  child: YoutubePlayerIFrame(
                    aspectRatio: 16 / 9,
                    controller: _controller!,
                  ),
                ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFullCharacteristics() {
    return Column(
      children: [
        const Text(
          "????????????????????????????",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: "Noto Sans",
          ),
          textAlign: TextAlign.center,
        ),
        _buildCharacteristics()
      ],
    );
  }

  Widget _buildCharacteristics() => Column(
        children: widget.weapon.characteristic.paragraphs
            .map((e) => _buildCharacteristicsParagraph(e))
            .toList(),
      );

  Widget _buildCharacteristicsParagraph(
      WeaponCharacteristicParagraph paragraph) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
            const SizedBox(height: 12),
            Text(
              paragraph.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "Noto Sans",
              ),
            ),
            const SizedBox(height: 6)
          ] +
          paragraph.items
              .map((e) => _buildCharacteristicsParagraphItem(e))
              .toList(),
    );
  }

  Widget _buildCharacteristicsParagraphItem(WeaponCharacteristicItem item) {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: "Noto Sans",
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${item.name}:"),
            Text(item.value),
          ],
        ),
      ),
    );
  }
}
