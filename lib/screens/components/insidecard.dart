import 'package:flutter/material.dart';
import 'package:ioe/Subject_Pages/Artificial%20Intelligence.dart';
import 'package:ioe/Subject_Pages/Civil%20Engineering%20Materials.dart';
import 'package:ioe/Subject_Pages/Computer%20Graphics.dart';
import 'package:ioe/Subject_Pages/Computer%20Organization%20And%20Architecture.dart';
import 'package:ioe/Subject_Pages/Computer%20networt%20and%20Security.dart';
import 'package:ioe/Subject_Pages/Data%20Communication.dart';
import 'package:ioe/Subject_Pages/Database%20Management%20System.dart';
import 'package:ioe/Subject_Pages/Digital%20Signal%20Analysis%20and%20Processing.dart';
import 'package:ioe/Subject_Pages/Distributed%20System.dart';
import 'package:ioe/Subject_Pages/Embedded%20System.dart';
import 'package:ioe/Subject_Pages/Energy%20Environment%20and%20society.dart';
import 'package:ioe/Subject_Pages/Engineering%20Professional%20Practice.dart';
import 'package:ioe/Subject_Pages/Information%20System.dart';
import 'package:ioe/Subject_Pages/InstrimentationII.dart';
import 'package:ioe/Subject_Pages/InstrumentationI.dart';
import 'package:ioe/Subject_Pages/Internet%20and%20Intranet.dart';
import 'package:ioe/Subject_Pages/Minor%20Project.dart';
import 'package:ioe/Subject_Pages/Object%20Oriented%20Analysis%20and%20Design.dart';
import 'package:ioe/Subject_Pages/Operating%20System.dart';
import 'package:ioe/Subject_Pages/Orginization%20and%20Management.dart';
import 'package:ioe/Subject_Pages/Probability%20And%20Statistics.dart';
import 'package:ioe/Subject_Pages/Project%20Management.dart';
import 'package:ioe/Subject_Pages/Simulation%20and%20Modeling.dart';
import 'package:ioe/Subject_Pages/Software%20Engineering.dart';
import 'package:ioe/Subject_Pages/applied_mechanics.dart';
import 'package:ioe/Subject_Pages/appliedmath.dart';
import 'package:ioe/Subject_Pages/basicelectrical.dart';
import 'package:ioe/Subject_Pages/basicelectronics.dart';
import 'package:ioe/Subject_Pages/cprogramming.dart';
import 'package:ioe/Subject_Pages/datastructureandalgorithm.dart';
import 'package:ioe/Subject_Pages/digitallogic.dart';
import 'package:ioe/Subject_Pages/discretestructure.dart';
import 'package:ioe/Subject_Pages/electriccircuittheory.dart';
import 'package:ioe/Subject_Pages/electricdeviceandcircuit.dart';
import 'package:ioe/Subject_Pages/electricmachine.dart';
import 'package:ioe/Subject_Pages/electromagnetism.dart';
import 'package:ioe/Subject_Pages/engineeringchemistry.dart';
import 'package:ioe/Subject_Pages/engineeringdrawing1.dart';
import 'package:ioe/Subject_Pages/engineeringmath2.dart';
import 'package:ioe/Subject_Pages/engineeringmath3.dart';
import 'package:ioe/Subject_Pages/engineeringphysics.dart';
import 'package:ioe/Subject_Pages/engineerinmath1.dart';
import 'package:ioe/Subject_Pages/microprocessor.dart';
import 'package:ioe/Subject_Pages/numericalmethod.dart';
import 'package:ioe/Subject_Pages/objectorientedprogramming.dart.dart';
import 'package:ioe/Subject_Pages/theoryofcomputation.dart';
import 'package:ioe/Subject_Pages/thermodymanics.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/demo.dart';

class InsideCard extends StatelessWidget {
  final String semester;
  final List<String> subjects;

  const InsideCard({
    required this.semester,
    required this.subjects,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          color: kblue.withOpacity(0.5), // Blurry border
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: kblue, // Background color
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              semester,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
              ),
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: subjects.map((subject) {
                return GestureDetector(
                  onTap: () {
                    _navigateToSubjectPage(context, subject);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0), // Reduced space between subjects
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      trailing: Icon(Icons.arrow_forward,
                          color: Colors.white), // Arrow icon to the right
                      title: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSubjectPage(BuildContext context, String subject) {
    switch (subject) {
      case 'Applied Mechanics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AppliedMechanics()),
        );
        break;
      case 'Basic Electrical Engineering':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasicElectricalEngineering()),
        );
        break;
      case 'Engineering Physics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineeringPhysics()),
        );
        break;
      case 'Engineering Drawing I':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineerinGDrawingI()),
        );
        break;
      case 'Engineering Mathematics I':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineeringMath1()),
        );
        break;
      case 'Computer Programming':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CProgramming()),
        );
        break;
      case 'Engineering Mathematics II':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineeringMath2()),
        );
        break;
      case 'Engineering Drawing II':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Basic Electronics Engineering':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BasicElectronics()),
        );
        break;
      case 'Engineering Chemistry':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Engineeringchemistry()),
        );
        break;
      case 'Fundamental of Thermodynamics & Heat Transfer':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Thermodynamics()),
        );
        break;
      case 'Workshop Technology':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Engineering Mathematics III':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineeringMath3()),
        );
        break;
      case 'Object Oriented Programming':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Oop()),
        );
        break;
      case 'Electric Circuit Theory':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ElectricCircuitTheory()),
        );
        break;
      case 'Theory of Computation':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Toc()),
        );
        break;
      case 'Electronics Devices and Circuit':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Edc()),
        );
        break;
      case 'Digital Logic':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DigitalLogic()),
        );
        break;
      case 'Electromagnetics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Electromagnetics()),
        );
        break;
      case 'Numerical Method':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NumericalMethod()),
        );
        break;
      case 'Applied Mathematics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AppliedMathematics()),
        );
        break;
      case 'Instrumentation I':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InstrumentationI()),
        );
        break;
      case 'Data Structure and Algorithm':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DSA()),
        );
        break;
      case 'Microprocessor':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Microprocessor()),
        );
        break;
      case 'Discrete Structure':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DiscreteStructure()),
        );
        break;
      case 'Electrical Machine':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ElectricalMachine()),
        );
        break;
      case 'Communication English':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Probability and Statistics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProbabilityAndStatistics()),
        );
        break;
      case 'Computer organization and Architecture':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ComputerOrginzationAndArchitecture()),
        );
        break;
      case 'Software Engineering':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SoftwareEngineering()),
        );
        break;
      case 'Computer Graphics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ComputerGraphics()),
        );
        break;
      case 'Instrumentation II':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InstrumentationII()),
        );
        break;
      case 'Data Communication':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DataCommunication()),
        );
        break;
      case 'Engineering Economics':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Object Oriented Analysis and Design':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ObjectOrientedAnalysis()),
        );
        break;
      case 'Artificial Intelligence':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArtificialIntelligence()),
        );
        break;
      case 'Operating System':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OperatingSystem()),
        );
        break;
      case 'Embedded System':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EmbeddedSystem()),
        );
        break;
      case 'Database Management System':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DatabaseManagementSystem()),
        );
        break;
      case 'Minor Project':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MinorProject()),
        );
        break;
      case 'ICT Project Management':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProjectManagement()),
        );
        break;
      case 'Organization and Management':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrganizationandManagement()),
        );
        break;
      case 'Energy Environment and Society':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EnergyEnvironment()),
        );
        break;
      case 'Distributed System':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DistributedSystem()),
        );
        break;
      case 'Computer Networks and Security':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ComputerNetworkandSecurity()),
        );
        break;
      case 'Digital Signal Analysis':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DigitalSignalAnalysis()),
        );
        break;
      case 'Engineering Professional Practice':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EngineeringProfessional()),
        );
        break;
      case 'Inforamtion Systems':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InformationSystem()),
        );
        break;
      case 'Internet and Intranet':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InternetAndIntranet()),
        );
        break;
      case 'Simulation and Modeling':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SimulationandModeling()),
        );
        break;
      case 'Civil Engineering Materials':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CivilEngineeringMaterial()),
        );
        break;
      // Add cases for other subjects and their corresponding pages
      default:
        // Handle case where page not found
        print('Page not found for $subject');
        break;
    }
  }
}
