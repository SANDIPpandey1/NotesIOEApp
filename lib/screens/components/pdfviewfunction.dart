import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:ioe/constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFDisplay {
  static Future<File> loadNetwork(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    final bytes = response.bodyBytes;
    return _storeFile(url, bytes);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }
}

void openPDF(BuildContext context, String url) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: CircularProgressIndicator(), // Show loading indicator
      );
    },
  );

  try {
    final file = await PDFDisplay.loadNetwork(url);
    Navigator.pop(context); // Close the loading dialog
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PDFViewPage(file: file)),
    );
  } on SocketException catch (_) {
    // Handle SocketException: Device not connected to the internet
    Navigator.pop(context); // Close the loading dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Please connect to the internet.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  } catch (e) {
    // Handle other exceptions
    Navigator.pop(context); // Close the loading dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Failed to load PDF.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  final File file;
  final bool showDownloadButton;

  const PDFViewPage(
      {Key? key, required this.file, this.showDownloadButton = true})
      : super(key: key);

  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  PDFViewController? _pdfViewController;
  int _totalPages = 0;
  int _currentPage = 1; // Start with page 1
  final _pageController = TextEditingController(text: '1');
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _pageController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _jumpToPage(String page) {
    final int? pageNumber = int.tryParse(page);
    if (pageNumber != null && pageNumber > 0 && pageNumber <= _totalPages) {
      _pdfViewController?.setPage(pageNumber - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = basename(widget.file.path);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: <Widget>[
          if (widget.showDownloadButton)
            IconButton(
              icon: Icon(Icons.download, color: Colors.black),
              onPressed: () async {
                final appDir = await getApplicationDocumentsDirectory();
                final filename = basename(widget.file.path);
                final newFile = File('${appDir.path}/Downloads/$filename');
                await newFile.create(recursive: true);
                await widget.file.copy(newFile.path);
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Download Successful!"),
                      content: Text("PDF Downloaded to Downloads Section."),
                      actions: <Widget>[
                        TextButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PDFView(
              filePath: widget.file.path,
              swipeHorizontal: false, // Set to false for vertical scrolling
              pageSnap: true,
              autoSpacing: true,
              onRender: (_pages) {
                setState(() {
                  _totalPages = _pages!;
                  _currentPage =
                      1; // Reset to first page when document is loaded
                  _pageController.text = '1'; // Update the controller text
                });
              },
              onViewCreated: (PDFViewController pdfViewController) {
                setState(() {
                  _pdfViewController = pdfViewController;
                });
              },
              onPageChanged: (int? page, int? total) {
                setState(() {
                  _currentPage = page! + 1; // Adjust for 0-indexing
                  _pageController.text =
                      _currentPage.toString(); // Update the controller text
                });
              },
            ),
          ),
          if (_totalPages > 1) ...[
            Container(
              color: kblue,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.first_page, color: Colors.white),
                    onPressed: () {
                      _pdfViewController?.setPage(0);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_left, color: Colors.white),
                    onPressed: () {
                      _currentPage > 1
                          ? _pdfViewController?.setPage(_currentPage - 2)
                          : null;
                    },
                  ),
                  Expanded(
                    child: TextField(
                      controller: _pageController,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        hintText: 'Page',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      onSubmitted: _jumpToPage,
                    ),
                  ),
                  Text(' / $_totalPages',
                      style: TextStyle(color: Colors.white)),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.white),
                    onPressed: () {
                      _currentPage < _totalPages
                          ? _pdfViewController?.setPage(_currentPage)
                          : null;
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.last_page, color: Colors.white),
                    onPressed: () {
                      _pdfViewController?.setPage(_totalPages - 1);
                    },
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
