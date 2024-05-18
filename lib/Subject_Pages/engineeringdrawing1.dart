import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class EngineerinGDrawingI extends StatelessWidget {
  final int initialTabIndex;
  EngineerinGDrawingI({this.initialTabIndex = 0});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Engineering Drawing I',
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
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      children: [
        InsideButtons(
          text: 'Drawing Solutions',
          fileSize: '16',
          icon: Icons.arrow_forward,
          onTap: () {
            openPDF(context,
                'https://notesioe.com/wp-content/uploads/2024/05/Drawing-I-Solution.pdf');
          },
        )
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
                      child: Center(child: Text('1,2,5')),
                    ),
                    TableCell(
                      child: Center(child: Text('22')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
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
                      child: Center(child: Text('3-5')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('4')),
                    ),
                    TableCell(
                      child: Center(child: Text('14')),
                    ),
                    TableCell(
                      child: Center(child: Text('7-10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('6')),
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
                      child: Center(child: Text('Total')),
                    ),
                    TableCell(
                      child: Center(child: Text('60')),
                    ),
                    TableCell(
                      child: Center(child: Text('40')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text('There may be minor deviation in marks distribution.'),
          //SizedBox(height: 20),
          SectionHeader(
              text:
                  'Instrumental Drawing, Technical Lettering Practices and Techniques (2 hours)'),
          SubSection(text: 'Equipment and Materials'),
          SubSection(
              text:
                  'Description of Drawing Instruments, Auxiliary Equipment and Drawing Materials'),
          SubSection(text: 'Techniques of Instrumental Drawing'),
          SubSection(
              text:
                  'Pencil Sharpening, Securing Paper, Proper Use of T-Squares, Triangles, Scales Dividers, Compasses, Erasing Shields, French Curves, Inking Pens'),
          SubSection(
              text:
                  'Lettering Strokes, Letter Proportions, Use of Pencils and Pens, Uniformity and Appearance of Letters, Freehand Techniques, Inclined and Vertical Letters and Numerals, Upper and Lower Cases, Standard English Lettering Forms'),

          SectionHeader(text: 'Dimensioning (2 hours)'),
          SubSection(text: 'Fundamentals and Techniques'),
          SubSection(text: 'Size and Location Dimensioning, SI Conversions'),
          SubSection(
              text:
                  'Use of Scales, Measurement Units, Reducing and Enlarging Drawings'),
          SubSection(
              text: 'Placement of Dimensions: Aligned and Unidirectional'),

          SectionHeader(text: 'Applied Geometry (6 hours)'),
          SubSection(
              text:
                  'Plane Geometrical Construction: Proportional Division of Lines, Arc & Line Tangents'),
          SubSection(
              text:
                  'Methods for Drawing Standard Curves such as Ellipses, Parabolas, Hyperbolas, Involutes, Spirals, Cycloids and Helices (Cylindrical and Conical)'),
          SubSection(
              text:
                  'Techniques to Reproduce a Given Drawing (by Construction)'),

          SectionHeader(text: 'Basic Descriptive Geometry (14 hours)'),
          SubSection(
              text:
                  'Introduction to Orthographic Projection, Principal Planes, Four Quadrants or Angles'),
          SubSection(
              text:
                  'Projection of Points on First, Second, Third and Fourth Quadrants'),
          SubSection(
              text:
                  'Projection of Lines: Parallel to One of the Principal Plane, Inclined to One of the Principal Plane and Parallel to Other, Inclined to Both Principal Planes'),
          SubSection(
              text:
                  'Projection Planes: Perpendicular to Both Principal Planes, Parallel to One of the Principal Planes and Inclined to One of the Principal Planes, Perpendicular to Other and Inclined to Both Principal Planes'),
          SubSection(
              text:
                  'True Length of Lines: Horizontal, Inclined and Oblique Lines'),
          SubSection(text: 'Rules for Parallel and Perpendicular Lines'),
          SubSection(text: 'Point View or End View of a Line'),
          SubSection(text: 'Shortest Distance from a Point to a Line'),
          SubSection(text: 'Edge View and True Shape of an Oblique Plane'),
          SubSection(text: 'Angle Between Two Intersecting Lines'),
          SubSection(text: 'Intersection of a Line and a Plane'),
          SubSection(text: 'Angle Between a Line and a Plane'),
          SubSection(text: 'Dihedral Angle Between Two Planes'),
          SubSection(text: 'Shortest Distance Between Two Skew Lines'),
          SubSection(text: 'Angle Between Two Non-Intersecting (Skew) Lines'),

          SectionHeader(
              text: 'Multi-View (Orthographic) Projections (18 hours)'),
          SubSection(text: 'Orthographic Projections'),
          SubSection(text: 'First and Third Angle Projection'),
          SubSection(
              text:
                  'Principal Views: Methods for Obtaining Orthographic Views, Projection of Lines, Angles and Plane Surfaces, Analysis in Three Views, Projection of Curved Lines and Surfaces, Object Orientation and Selection of Views for Best Representation, Full and Hidden Lines'),
          SubSection(
              text:
                  'Orthographic Drawings: Making an Orthographic Drawing, Visualizing Objects (Pictorial View) from the Given Views'),
          SubSection(
              text:
                  'Interpretation of Adjacent Areas, True-Length Lines, Representation of Holes, Conventional Practices'),
          SubSection(
              text:
                  'Sectional Views: Full, Half, Broken Revolved, Removed (Detail) Sections, Phantom of Hidden Section, Auxiliary Sectional Views, Specifying Cutting Planes for Sections, Conventions for Hidden Lines, Holes, Ribs, Spokes'),
          SubSection(
              text:
                  'Auxiliary Views: Basic Concept and Use, Drawing Methods and Types, Symmetrical and Unilateral Auxiliary Views. Projection of Curved Lines and Boundaries, Line of Intersection Between Two Planes, True Size of Dihedral Angles, True Size and Shape of Plane Surfaces'),

          SectionHeader(text: 'Developments and Intersections (18 hours)'),
          SubSection(text: 'Introduction and Projection of Solids'),
          SubSection(
              text:
                  'Developments: General Concepts and Practical Considerations, Development of a Right or Oblique Prism, Cylinder, Pyramid, and Cone, Development of Truncated Pyramid and Cone, Triangulation Method for Approximately Developed Surfaces, Transition Pieces for Connecting Different Shapes, Development of a Sphere'),
          SubSection(
              text:
                  'Intersections: Lines of Intersection of Geometric Surfaces, Piercing Point of a Line and a Geometric Solid, Intersection Lines of Two Planes, Intersections of Prisms and Pyramids, Cylinder and an Oblique Plane. Constructing a Development Using Auxiliary Views, Intersection of Two Cylinders, a Cylinder & a Cone'),

          SectionHeader(text: 'Practical:'),
          SubSection(
              text:
                  'Drawing Sheet Layout, Freehand Lettering, Sketching of Parallel Lines, Circles, Dimensioning'),
          SubSection(
              text: 'Applied Geometry (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Descriptive Geometry I: Projection of Point and Lines (4.1 to 4.3) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Descriptive Geometry II: Projection of Planes (4.4) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Descriptive Geometry III: Applications in Three Dimensional Space (4.5 to 4.15) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Multi-View Drawings (5.1) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Multi-View, Sectional Drawings and Dimensioning I (5.2) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Multi-View, Sectional Drawings and Dimensioning II (5.2) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Auxiliary View, Sectional Drawings and Dimensioning (5.3) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Projection of Regular Geometrical Solids (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Development and Intersection I (6.1) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Development and Intersection II (6.2) (Sketch and Instrumental Drawing)'),
          SubSection(
              text:
                  'Development and Intersection III (6.3) (Sketch and Instrumental Drawing)'),

          SectionHeader(text: 'References:'),
          SubSection(
              text:
                  '“Fundamentals of Engineering Drawing”, W. J. Luzadder, Prentice Hall.'),
          SubSection(
              text:
                  '“Engineering Drawing and Graphic Technology”, T. E. French, C. J. Vierck, and R. J. Foster, McGraw Hill Publishing Co.'),
          SubSection(
              text:
                  '“Technical Drawing”, F. E. Giesecke, A . Mitchell, H. C. Spencer and J. T. Dygdone, Macmillan Publishing Co.'),
          SubSection(
              text:
                  '“Elementary Engineering Drawing”, N. D. Bhatt, Charotar Publishing House, India.'),
          SubSection(
              text:
                  '“A Text Book of Engineering Drawing”, P. S. Gill, S. K. Kataria and Sons, India'),
          SubSection(
              text:
                  '“A Text Book of Engineering Drawing”, R. K. Dhawan, S. Chand and Company Limited, India.')

          // Syllabus content here
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
                    'https://notesioe.com/wp-content/uploads/2023/10/Computer-Programming.pdf');
              },
            ),
          ],
        ),
      ),
    );
  }
}
