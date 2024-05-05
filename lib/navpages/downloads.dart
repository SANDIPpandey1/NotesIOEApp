import 'dart:io';
import 'package:flutter/material.dart';

import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/home_screen.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  List<File> downloadedFiles = [];

  @override
  void initState() {
    super.initState();
    loadDownloadedFiles();
  }

  void loadDownloadedFiles() async {
    final appDir = await getApplicationDocumentsDirectory();
    final downloadsDir = Directory('${appDir.path}/Downloads');
    if (downloadsDir.existsSync()) {
      final files = downloadsDir.listSync();
      downloadedFiles = files.whereType<File>().toList();
      setState(() {});
    }
  }

  void deleteFile(File file) async {
    await file.delete();
    loadDownloadedFiles();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          AppBarTop(pageTitle: 'Downloads'), // Use AppBarTop here
          downloadedFiles.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 300),
                    child: Text(
                      'No PDFs downloaded yet.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: downloadedFiles.length,
                  itemBuilder: (context, index) {
                    final file = downloadedFiles[index];
                    final fileName = basename(file.path);
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(fileName),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PDFViewPage(
                                  file: file, showDownloadButton: false),
                            ),
                          );
                        },
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Confirm Deletion'),
                                content: Text(
                                    'Are you sure you want to delete $fileName?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      deleteFile(file);
                                      Navigator.pop(context);
                                    },
                                    child: Text('Delete'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
