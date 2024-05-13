import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ioe/Subject_Pages/Applied%20Mechanics%20Dynamics.dart';
import 'package:ioe/Subject_Pages/Artificial%20Intelligence.dart';
import 'package:ioe/Subject_Pages/Building%20Technology.dart';
import 'package:ioe/Subject_Pages/Civil%20Engineering%20Materials.dart';
import 'package:ioe/Subject_Pages/Computational%20Techniques%20in%20Civil%20Engineering.dart';
import 'package:ioe/Subject_Pages/Computer%20Graphics.dart';
import 'package:ioe/Subject_Pages/Computer%20Organization%20And%20Architecture.dart';
import 'package:ioe/Subject_Pages/Computer%20networt%20and%20Security.dart';
import 'package:ioe/Subject_Pages/Concrete%20Technology%20and%20Masonry%20Structure.dart';
import 'package:ioe/Subject_Pages/Construction%20Management.dart';
import 'package:ioe/Subject_Pages/Control%20System.dart';
import 'package:ioe/Subject_Pages/Data%20Communication.dart';
import 'package:ioe/Subject_Pages/Database%20Management%20System.dart';
import 'package:ioe/Subject_Pages/Design%20of%20RCC%20Structure.dart';
import 'package:ioe/Subject_Pages/Design%20of%20Steel%20and%20Timber%20Structure.dart';
import 'package:ioe/Subject_Pages/Digital%20Control%20System.dart';
import 'package:ioe/Subject_Pages/Digital%20Signal%20Analysis%20and%20Processing.dart';
import 'package:ioe/Subject_Pages/Distributed%20System.dart';
import 'package:ioe/Subject_Pages/Electric%20Machines%20II.dart';
import 'package:ioe/Subject_Pages/Electrical%20Machines%20I.dart';
import 'package:ioe/Subject_Pages/Industrial%20Power%20Distribution%20and%20Illumination.dart';
import 'package:ioe/Subject_Pages/Power%20Electronics.dart';
import 'package:ioe/Subject_Pages/Power%20System%20Analysis%20I.dart';
import 'package:ioe/Subject_Pages/Power%20System%20Analysis%20II.dart';
import 'package:ioe/Subject_Pages/Signal%20Analysis.dart';
import 'package:ioe/Subject_Pages/Switchgear%20and%20Protection.dart';
import 'package:ioe/Subject_Pages/Utilization%20of%20Electrical%20Energy.dart';
import 'package:ioe/Subject_Pages/electricCircuitandmachines.dart';
import 'package:ioe/Subject_Pages/Embedded%20System.dart';
import 'package:ioe/Subject_Pages/Energy%20Environment%20and%20society.dart';
import 'package:ioe/Subject_Pages/Engineering%20Geology%20I.dart';
import 'package:ioe/Subject_Pages/Engineering%20Geology%20II.dart';
import 'package:ioe/Subject_Pages/Engineering%20Hydrology.dart';
import 'package:ioe/Subject_Pages/Engineering%20Professional%20Practice.dart';
import 'package:ioe/Subject_Pages/Estimating%20and%20Costing.dart';
import 'package:ioe/Subject_Pages/Fluid%20Mechanics.dart';
import 'package:ioe/Subject_Pages/Foundation%20Engineering.dart';
import 'package:ioe/Subject_Pages/Hydraulics.dart';
import 'package:ioe/Subject_Pages/Hydropower%20Engineering.dart';
import 'package:ioe/Subject_Pages/Information%20System.dart';
import 'package:ioe/Subject_Pages/InstrimentationII.dart';
import 'package:ioe/Subject_Pages/InstrumentationI.dart';
import 'package:ioe/Subject_Pages/Internet%20and%20Intranet.dart';
import 'package:ioe/Subject_Pages/Irrigation%20and%20Drainage%20Engineering.dart';
import 'package:ioe/Subject_Pages/Minor%20Project.dart';
import 'package:ioe/Subject_Pages/Object%20Oriented%20Analysis%20and%20Design.dart';
import 'package:ioe/Subject_Pages/Operating%20System.dart';
import 'package:ioe/Subject_Pages/Orginization%20and%20Management.dart';
import 'package:ioe/Subject_Pages/Probability%20And%20Statistics.dart';
import 'package:ioe/Subject_Pages/Project%20Engineering.dart';
import 'package:ioe/Subject_Pages/Project%20Management.dart';
import 'package:ioe/Subject_Pages/Simulation%20and%20Modeling.dart';
import 'package:ioe/Subject_Pages/Software%20Engineering.dart';
import 'package:ioe/Subject_Pages/Soil%20Mechanics.dart';
import 'package:ioe/Subject_Pages/Strength%20of%20Materials.dart';
import 'package:ioe/Subject_Pages/Surveying%20I.dart';
import 'package:ioe/Subject_Pages/Surveying%20II.dart';
import 'package:ioe/Subject_Pages/Technology%20Environment%20and%20Society.dart';
import 'package:ioe/Subject_Pages/Theory%20of%20Structures%20II.dart';
import 'package:ioe/Subject_Pages/Transportation%20Engineering%20II.dart';
import 'package:ioe/Subject_Pages/Transportation%20Engineering.dart';
import 'package:ioe/Subject_Pages/Water%20Supply%20Engineering.dart';
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
import 'package:ioe/Subject_Pages/Sanitary%20Engineering.dart';
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
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
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
          CupertinoPageRoute(
            builder: (context) => AppliedMechanics(
              initialTabIndex: 1, // Set initialTabIndex to 1 for syllabus tab
            ),
          ),
        );
        ;
        break;
      case 'Basic Electrical Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  BasicElectricalEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Physics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringPhysics(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Drawing I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineerinGDrawingI(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Mathematics I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringMath1(initialTabIndex: 1)),
        );
        break;
      case 'Computer Programming':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => CProgramming(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Mathematics II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringMath2(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Drawing II':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Basic Electronics Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => BasicElectronics(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Chemistry':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Engineeringchemistry(initialTabIndex: 1)),
        );
        break;
      case 'Fundamental of Thermodynamics & Heat Transfer':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Thermodynamics(initialTabIndex: 1)),
        );
        break;
      case 'Workshop Technology':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Engineering Mathematics III':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringMath3(initialTabIndex: 1)),
        );
        break;
      case 'Object Oriented Programming':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Oop(initialTabIndex: 1)),
        );
        break;
      case 'Electric Circuit Theory':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ElectricCircuitTheory(initialTabIndex: 1)),
        );
        break;
      case 'Theory of Computation':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Toc(initialTabIndex: 1)),
        );
        break;
      case 'Electronics Devices and Circuit':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Edc(initialTabIndex: 1)),
        );
        break;
      case 'Digital Logic':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DigitalLogic(initialTabIndex: 1)),
        );
        break;
      case 'Electromagnetics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Electromagnetics(initialTabIndex: 1)),
        );
        break;
      case 'Numerical Method':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => NumericalMethod(initialTabIndex: 1)),
        );
        break;
      case 'Applied Mathematics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => AppliedMathematics(initialTabIndex: 1)),
        );
        break;
      case 'Instrumentation I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => InstrumentationI(initialTabIndex: 1)),
        );
        break;
      case 'Data Structure and Algorithm':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => DSA(initialTabIndex: 1)),
        );
        break;
      case 'Microprocessor':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Microprocessor(initialTabIndex: 1)),
        );
        break;
      case 'Discrete Structure':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DiscreteStructure(initialTabIndex: 1)),
        );
        break;
      case 'Electrical Machine':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ElectricalMachine(initialTabIndex: 1)),
        );
        break;
      case 'Communication English':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Probability and Statistics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  ProbabilityAndStatistics(initialTabIndex: 1)),
        );
        break;
      case 'Computer organization and Architecture':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  ComputerOrginzationAndArchitecture(initialTabIndex: 1)),
        );
        break;
      case 'Software Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SoftwareEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Computer Graphics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ComputerGraphics(initialTabIndex: 1)),
        );
        break;
      case 'Instrumentation II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => InstrumentationII(initialTabIndex: 1)),
        );
        break;
      case 'Data Communication':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DataCommunication(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Economics':
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => Demo()),
        );
        break;
      case 'Object Oriented Analysis and Design':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ObjectOrientedAnalysis(initialTabIndex: 1)),
        );
        break;
      case 'Artificial Intelligence':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ArtificialIntelligence(initialTabIndex: 1)),
        );
        break;
      case 'Operating System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => OperatingSystem(initialTabIndex: 1)),
        );
        break;
      case 'Embedded System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EmbeddedSystem(initialTabIndex: 1)),
        );
        break;
      case 'Database Management System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  DatabaseManagementSystem(initialTabIndex: 1)),
        );
        break;
      case 'Minor Project':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => MinorProject(initialTabIndex: 1)),
        );
        break;
      case 'ICT Project Management':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ProjectManagement(initialTabIndex: 1)),
        );
        break;
      case 'Organization and Management':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  OrganizationandManagement(initialTabIndex: 1)),
        );
        break;
      case 'Energy Environment and Society':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EnergyEnvironment(initialTabIndex: 1)),
        );
        break;
      case 'Distributed System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DistributedSystem(initialTabIndex: 1)),
        );
        break;
      case 'Computer Networks and Security':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  ComputerNetworkandSecurity(initialTabIndex: 1)),
        );
        break;
      case 'Digital Signal Analysis':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DigitalSignalAnalysis(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Professional Practice':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  EngineeringProfessional(initialTabIndex: 1)),
        );
        break;
      case 'Inforamtion Systems':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => InformationSystem(initialTabIndex: 1)),
        );
        break;
      case 'Internet and Intranet':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => InternetAndIntranet(initialTabIndex: 1)),
        );
        break;
      case 'Simulation and Modeling':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SimulationandModeling(initialTabIndex: 1)),
        );
        break;
      case 'Civil Engineering Materials':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  CivilEngineeringMaterial(initialTabIndex: 1)),
        );
        break;
      case 'Applied Mechanics Dynamics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  AppliedMechanicsDynamics(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Geology I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringGeologyI(initialTabIndex: 1)),
        );
        break;
      case 'Strength of Materials':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => StrengthOfMaterials(initialTabIndex: 1)),
          //test comment
        );
        break;
      case 'Surveying I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SurveyingI(initialTabIndex: 1)),
        );
        break;
      case 'Fluid Mechanics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => FluidMechanics(initialTabIndex: 1)),
        );
        break;
      case 'Hydraulics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => Hydraulics(initialTabIndex: 1)),
        );
        break;
      case 'Surveying II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SurveyingII(initialTabIndex: 1)),
        );
        break;
      case 'Soil Mechanics':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SoilMechanics(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Geology II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringGeologyII(initialTabIndex: 1)),
        );
        break;
      case 'Theory of Structures II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => TheoryofStructuresII(initialTabIndex: 1)),
        );
        break;
      case 'Water Supply Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => WaterSupplyEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Engineering Hydrology':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EngineeringHydrology(initialTabIndex: 1)),
        );
        break;
      case 'Concrete Technology and Masonry Structure':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  ConcreteTechnologyandMasonryStructure(initialTabIndex: 1)),
        );
        break;
      case 'Foundation Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => FoundationEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Design of Steel and Timber Structure':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  DesignofSteelandTimberStructure(initialTabIndex: 1)),
        );
        break;
      case 'Building Technology':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => BuildingTechnology(initialTabIndex: 1)),
        );
        break;
      case 'Sanitary Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => SanitaryEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Transportation Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  TransportationEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Irrigation and Drainage Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  IrrigationandDrainageEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Hydropower Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => HydropowerEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Project Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ProjectEngineering(initialTabIndex: 1)),
        );
        break;
      case 'Transportation Engineering II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  TransportationEngineeringII(initialTabIndex: 1)),
        );
        break;
      case 'Estimating and Costing':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => EstimatingandCosting(initialTabIndex: 1)),
        );
        break;
      case 'Design of RCC Structure':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DesignofRCCStructure(initialTabIndex: 1)),
        );
        break;
      case 'Technology Environment and Society':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  TechnologyEnvironmentandSociety(initialTabIndex: 1)),
        );
        break;
      case 'Construction Management':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ConstructionManagement(initialTabIndex: 1)),
        );
        break;
      case 'Computational Techniques in Civil Engineering':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ComputationalTechniquesinCivilEngineering(
                  initialTabIndex: 1)),
        );
        break;
      case 'Electric Circuits and Machines':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  ElectricCircuitAndMachines(initialTabIndex: 1)),
        );
        break;
      case 'Control System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ControlSystem(initialTabIndex: 1)),
        );
        break;
      case 'Power System Analysis I':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => PowerSystemAnalysisI(initialTabIndex: 1)),
        );
        break;
      case 'Power System Analysis II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => PowerSystemAnalysisII(initialTabIndex: 1)),
        );
        break;
      case 'Electrical Machines I':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ElectricalMachinesI(initialTabIndex: 1)),
        );
        break;
      case 'Electric Machines II':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => ElectricMachinesII(initialTabIndex: 1)),
        );
        break;
      case 'Switchgear and Protection':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) =>
                  SwitchgearandProtection(initialTabIndex: 1)),
        );
        break;
      case 'Digital Control System':
        Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (context) => DigitalControlSystem(initialTabIndex: 1)),
        );
        break;
      case 'Industrial Power Distribution and Illumination':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => IndustrialPowerDistributionandIllumination(
                  initialTabIndex: 1)),
        );
        break;
      case 'Signal Analysis':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SignalAnalysis(initialTabIndex: 1)),
        );
        break;
      case 'Power Electronics':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PowerElectronics(initialTabIndex: 1)),
        );
        break;
      case 'Utilization of Electrical Energy':
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  UtilizationofElectricalEnergy(initialTabIndex: 1)),
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
