import 'dart:async';
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
  bool isLoading = true;

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
    }
    // Simulate loading with a delay for 0.5 seconds
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void deleteFile(File file) async {
    await file.delete();
    loadDownloadedFiles();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarTop(
          pageTitle: 'Downloads',
          onDrawerIconPressed: () {
            Scaffold.of(context).openDrawer(); // Open drawer callback
          },
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _buildDownloadList(),
      ),
    );
  }

  Widget _buildDownloadList() {
    return downloadedFiles.isEmpty
        ? _buildNoDownloadsText()
        : ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: downloadedFiles.length,
            separatorBuilder: (context, index) =>
                Divider(), // Add divider between list items
            itemBuilder: (context, index) {
              final file = downloadedFiles[index];
              final fileName = basename(file.path);
              return _buildDownloadedFileItem(context, fileName, file);
            },
          );
  }

  Widget _buildNoDownloadsText() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'No PDFs downloaded yet.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadedFileItem(
      BuildContext context, String fileName, File file) {
    return ListTile(
      leading: Icon(Icons.file_download),
      title: Text(
        fileName,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PDFViewPage(file: file, showDownloadButton: false),
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
              content: Text('Are you sure you want to delete $fileName?'),
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
    );
  }
}
