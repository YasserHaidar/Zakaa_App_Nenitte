
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PDFViewerFromUrl extends StatelessWidget {
  final String url;

  const PDFViewerFromUrl({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff468499),
        title: Text('PDF Viewer',style: TextStyle(color:Colors.white),),
      ),
      body: PDF(

        swipeHorizontal: false,
      ).cachedFromUrl(url),
    );
  }
}

class PDFViewerFromAsset extends StatelessWidget {
  PDFViewerFromAsset({Key key, @required this.pdfAssetPath, this.title}) : super(key: key);
  final String pdfAssetPath;
  final String title;
  final Completer<PDFViewController> _pdfViewController =
  Completer<PDFViewController>();
  final _pageCountController = StreamController<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          StreamBuilder<String>(
              stream: _pageCountController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Center(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[900],
                      ),
                      child: Text(snapshot.data),
                    ),
                  );
                return SizedBox();
              }),
        ],
      ),
      body: PDF(
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: true,

        pageFling: true,
        onPageChanged: (current, total) =>
            _pageCountController.add('${current + 1} - $total'),
        onViewCreated: _pdfViewController.complete,
      ).fromAsset(pdfAssetPath),
      floatingActionButton: FutureBuilder<PDFViewController>(
        future: _pdfViewController.future,
        builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
         /* if (snapshot.hasData) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "-",
                  child: Text("-"),
                  onPressed: () async {
                    final pdfController = snapshot.data;
                    final currentPage =
                        await pdfController.getCurrentPage() - 1;
                    if (currentPage >= 0)
                      await snapshot.data.setPage(currentPage);
                  },
                ),
                FloatingActionButton(
                  heroTag: "+",
                  child: Text("+"),
                  onPressed: () async {
                    final pdfController = snapshot.data;
                    final currentPage =
                        await pdfController.getCurrentPage() + 1;
                    final numberOfPages = await pdfController.getPageCount();
                    if (numberOfPages > currentPage)
                      await snapshot.data.setPage(currentPage);
                  },
                ),
              ],
            );
          }*/
          return SizedBox();
        },
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PDFScreen extends StatelessWidget {
  String pathPDF = "";

  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return pathPDF == ""
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF468499),
              title: Text("PDF Document"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
            backgroundColor: Colors.white,
            body: Center(
              child: Container(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              ),
            ),
          )
        : PDFViewerScaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF468499),
              title: Text("PDF Document",style: TextStyle(color:Colors.white),),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share,color:Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            path: pathPDF);
  }
}

*/