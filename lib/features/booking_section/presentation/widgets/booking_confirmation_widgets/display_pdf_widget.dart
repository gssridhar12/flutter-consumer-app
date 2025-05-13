import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../../core/colors/colors.dart';
import '../../../../../shared/widgets/colored_safearea.dart';
import '../../../../../shared/widgets/secondary_appbar_widget.dart';

class DisplayPdfViewerPage extends StatelessWidget {
  final String pdfUrl;
  final String apptitle;

  const DisplayPdfViewerPage({
    super.key,
    required this.pdfUrl,
    required this.apptitle,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: AppBarWidgetSecondary(text: apptitle)),
        body: SfPdfViewer.network(pdfUrl),
      ),
    );
  }
}
