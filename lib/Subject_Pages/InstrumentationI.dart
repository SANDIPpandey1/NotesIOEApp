import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class InstrumentationI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Instrumentation I',
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
                      child: Center(child: Text('6')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('2')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('16')),
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
                      child: Center(child: Text('6')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('10')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('7')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('12')),
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
          SectionHeader(text: 'Instrumentations Systems(2 hours)'),
    SubSection(text: 'Functions of components of instrumentation system introduction, signal processing, Signal Transmission, Output Indication'),
    SubSection(text: 'Need for Electrical, Electronics, Pneumatic and Hydraulic working media systems and Conversion devices'),
    SubSection(text: 'Analog and digital systems'),

SectionHeader(text: 'Theory of measurement(10 hours)'),
    SubSection(text: 'Static performance parameters-accuracy, precision, sensitivity, resolution and linearity'),
    SubSection(text: 'Dynamic performance parameters-Response time, Frequency Response and Bandwidth'),
    SubSection(text: 'Error in measurement'),
    SubSection(text: 'Statistical analysis of error in measurement'),
    SubSection(text: 'Measurement of voltage & current (moving coil & moving iron instruments)'),
    SubSection(text: 'Measurement of low, high & medium resistances'),
    SubSection(text: 'AC bridge & measurement of Inductance and Capacitance'),

SectionHeader(text: 'Transducer(8 hours)'),
    SubSection(text: 'Introduction'),
    SubSection(text: 'Classification'),
    SubSection(text: 'Application'),
    SubSection(text: 'Measurement of mechanical variables, displacement, strain, velocity, acceleration and vibration'),
    SubSection(text: 'Measurement of process variables-Temperature, Pressure, Level, Fluid flow, Chemical constituents in gases or liquids, pH and Humidity'),
    SubSection(text: 'Measurement of bio-physical variables blood pressure and myoelectric potentials'),

SectionHeader(text: 'Electrical Signal Processing and transmission(6 hours)'),
    SubSection(text: 'Basic Op-amp characteristics'),
    SubSection(text: 'Instrumentation amplifier'),
    SubSection(text: 'Signal amplification, attenuation, integration, differentiation, network isolation, wave shaping'),
    SubSection(text: 'Effect of noise, analog filtering, digital filtering'),
    SubSection(text: 'Optical communication, fibre optics, electro-optic conversion devices'),

SectionHeader(text: 'Analog-Digital and Digital-Analog Conversion(6 hours)'),
    SubSection(text: 'Analog signal and digital signal'),
    SubSection(text: 'Digital to analog convertors-weighted resistor type, R-2R ladder type, DAC Errors'),
    SubSection(text: 'Analog to digital convertors-successive approximation type, ramp type, dual ramp type, flash type, ADC errors'),

SectionHeader(text: 'Digital Instrumentation(5 hours)'),
    SubSection(text: 'Sample data system, sample and hold circuit'),
    SubSection(text: 'Components of data acquisition system'),
    SubSection(text: 'Interfacing to the computer'),

SectionHeader(text: 'Electrical equipment(8 hours)'),
    SubSection(text: 'Wattmeter'),
    SubSection(text: 'Types'),
    SubSection(text: 'Working principles'),
    SubSection(text: 'Energy meter'),
    SubSection(text: 'Types'),
    SubSection(text: 'Working principles'),
    SubSection(text: 'Frequency meter'),
    SubSection(text: 'Types'),
    SubSection(text: 'Working principles'),
    SubSection(text: 'Power factor meter'),
    SubSection(text: 'Instrument transformers'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'Accuracy test in analog meters'),
    SubSection(text: 'Operational Amplifiers in Circuits'),
    SubSection(text: 'Use of Op amp as a summer, inverter, integrator and differentiator'),
    SubSection(text: 'Use resistive, inductive and capacitive transducers to measure displacement'),
    SubSection(text: 'Use strain gauge transducers to measure force'),
    SubSection(text: 'Study of Various transducers for measurement of Angular displacement, Angular Velocity, Pressure and Flow'),
    SubSection(text: 'Use optical, Hall effect and inductive transducer to measure angular displacement'),
    SubSection(text: 'Use tacho - generator to measure angular velocity'),
    SubSection(text: 'Use RTD transducers to measure pressure and flow'),
    SubSection(text: 'Digital to Analog Conversion'),
    SubSection(text: 'Perform static testing of D/A converter'),
    SubSection(text: 'Analog to Digital Conversion'),
    SubSection(text: 'Perform static testing of A/D converter'),

SectionHeader(text: 'References:'),
    SubSection(text: 'D.M Considine "Process Instruments and Controls Handbook" third edition McGraw Hill, 1985'),
    SubSection(text: 'S. Wolf and R.F.M. Smith "Students Reference Manual for Electronics Instrumentation Laboratories", Prentice Hall, 1990'),
    SubSection(text: 'E.O Deobelin "Measurement System, Application and Design" McGraw Hill, 1990'),
    SubSection(text: 'A.K Sawhney "A Course in Electronic Measurement and Instrumentation " Dhanpat Rai and Sons,1988'),
    SubSection(text: 'C.S. Rangan, G.R Sharma and V.S.V. Mani, "Instrumentation Devices and Systems" Tata McGraw Hill publishing Company Limited New Delhi,1992.'),
    SubSection(text: 'J.B. Gupta. "A Course in Electrical & Electronics Measurement & Instrumentation, thirteenth edition, 2008, Kataria & Sons.')

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