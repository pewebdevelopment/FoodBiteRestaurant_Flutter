import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PreviewPage extends StatefulWidget {
  final int position;

  const PreviewPage({Key? key, required this.position}) : super(key: key);
  @override
  _PreviewPageState createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.87),
        ),
        title: Text(
          'preview'.tr(),
          style: Theme.of(context)
              .appBarTheme
              .titleTextStyle!
              .copyWith(color: Colors.white.withOpacity(0.87)),
        ),
      ),
      body: PhotoViewGallery.builder(
        scrollPhysics: const ClampingScrollPhysics(),
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage('assets/images/photo_${index + 1}.jpg'),
            initialScale: PhotoViewComputedScale.contained,
          );
        },
        itemCount: 10,
        loadingBuilder: (context, event) => Center(
          child: Container(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              value: event == null
                  ? 0
                  : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
            ),
          ),
        ),
        //backgroundDecoration: widget.backgroundDecoration,
        pageController: _controller,
        //onPageChanged: onPageChanged,
      ),
    );
  }
}
