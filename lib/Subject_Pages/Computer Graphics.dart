import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ComputerGraphics extends StatelessWidget {
  final int initialTabIndex;
  ComputerGraphics({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Computer Graphics',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                  child: Text(
                'Syllabus',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Tab(
                  child: Text(
                'Old Questions',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
            indicatorColor: kblue,
            labelColor: Colors.black,
          ),
        ),
        body: TabBarView(
          //physics: NeverScrollableScrollPhysics(),
          children: [
            _buildNotesTab(context),
            _buildSyllabusTab(),
            _buildOldQuestionsTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesTab(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        SizedBox(height: 20),
        InsideButtons(text: 'Overview', icon: Icons.read_more, onTap: () {})

        // Add more InsideButtons as needed
      ],
    );
  }

  Widget _buildSyllabusTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //SizedBox(height: 10),
          SectionHeader(text: 'Marks Distribution'),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Chapters')),
                    ),
                    TableCell(
                      child: Center(child: Text('Hours')),
                    ),
                    TableCell(
                      child: Center(child: Text('Marks')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('1')),
                    ),
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('45')),
                    ),
                    TableCell(
                      child: Center(child: Text('80')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          SectionHeader(text: 'Introduction and application [2 hours]'),
          SubSection(text: 'History of computer graphics'),
          SubSection(text: 'Applications of computer graphics'),
          SubSection(
              text:
                  'Hardware: Raster-Scan Displays, Vector Displays, Hard copy devices, Input Hardwares, Display Architectures'),
          SubSection(
              text:
                  'Applications in various fields like medicine, engineering, art, uses in virtual realism.'),

          SectionHeader(text: 'Scan-Conversion [6 hours]'),
          SubSection(text: 'Scan-Converting A Point'),
          SubSection(
              text:
                  'Scan-Converting A Straight Line: DDA Line Algorithm, Bresenham\'s Line Algorithm'),
          SubSection(
              text:
                  'Scan-Converting a Circle and an Ellipse: Mid-Point Circle and Ellipse Algorithm'),

          SectionHeader(text: 'Two –Dimensional Transformations [6 hours]'),
          SubSection(
              text:
                  'Two –dimensional translation, rotation, scaling, reflection, shear transforms'),
          SubSection(text: 'Two-dimensional composite transformation'),
          SubSection(
              text:
                  'Two-dimensional viewing pipeline, world to screen viewing transformations and clipping (Cohen-Sutherland Line Clipping, Liang-Barsky Line Clipping)'),

          SectionHeader(text: 'Three-Dimensional Graphics [6 hours]'),
          SubSection(
              text:
                  'Three –dimensional translation, rotation, scaling, reflection, shear transforms'),
          SubSection(text: 'Three-dimensional composite transformation'),
          SubSection(
              text:
                  'Three-dimensional viewing pipeline, world to screen viewing transformation, projection concepts (orthographic, parallel, perspective projections)'),

          SectionHeader(text: 'Curve Modeling [4 hours]'),
          SubSection(
              text:
                  'Introduction to Parametric cubic Curves, Splines, Bezier curves'),

          SectionHeader(text: 'Surface modeling [4 hours]'),
          SubSection(
              text:
                  'Polygon surface, vertex table, edge table, polygon table, surface normal and spatial orientation of surfaces'),

          SectionHeader(text: 'Visible Surface Determination [6 hours]'),
          SubSection(text: 'Image Space and Object Space techniques'),
          SubSection(
              text:
                  'Back Face Detection, Z-Buffer, A-Buffer, Scan-Line method'),

          SectionHeader(
              text: 'Illumination and Surface Rendering methods [8 hours]'),
          SubSection(
              text:
                  'Algorithms to simulate ambient, diffuse and  specular  reflections'),
          SubSection(text: 'Constant , Gouraud and phong shading models'),

          SectionHeader(text: 'Introduction to Open GL [3 hours]'),
          SubSection(
              text:
                  'Introduction to OpenGl, callback functions, Color commands, drawing pixels, lines, and polygons using OpenGL, Viewing, Lighting.'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'There shall be 5 to 6 lab exercise including following concepts:'),
          SubSection(text: 'DDA Line Algorithm'),
          SubSection(text: 'Bresenham’s Line algorithm'),
          SubSection(text: 'Mid Point Circle Algorithm'),
          SubSection(text: 'Mid Point Ellipse Algorithm'),
          SubSection(text: 'Lab on 2-D Transformations'),
          SubSection(text: 'Basic Drawing Techniques in OpenGL'),

          SectionHeader(text: 'Text Book:'),
          SubSection(
              text:
                  'Donald Hearn and M. Pauline Baker, “Computer Graphics C version (2nd edition)”'),

          SectionHeader(text: 'Reference'),
          SubSection(
              text:
                  'Donald D. Hearn and  M. Pauline Baker, “Computer Graphics with OpenGL (3rd Edition)”'),
          SubSection(
              text:
                  'Foley, Van Dam, Feiner, Hughes “Computer Graphics Principles and Practice (Second Edition in C”)')
        ],
      ),
    );
  }

  Widget _buildOldQuestionsTab(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            InsideButtons(
              text: 'Old Questions',
              icon: Icons.question_answer_outlined,
              onTap: () {
                openPDF(context,
                    'https://notesioe.com/wp-content/uploads/2024/04/AppliedMechanicsOldQues.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
