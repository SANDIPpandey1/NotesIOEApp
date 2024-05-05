import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class ArtificialIntelligence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Artificial Intelligence',
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
                      child: Center(child: Text('1, 2')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('3, 4')),
                    ),
                    TableCell(
                      child: Center(child: Text('5')),
                    ),
                    TableCell(
                      child: Center(child: Text('8')),
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('10')),
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
                      child: Center(child: Text('11')),
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
          SectionHeader(text: 'Introduction (4 hrs)'),
    SubSection(text: 'Definition of Artificial Intelligence'),
    SubSection(text: 'Importance of Artificial Intelligence'),
    SubSection(text: 'AI and related fields'),
    SubSection(text: 'Brief history of Artificial Intelligence'),
    SubSection(text: 'Applications of Artificial Intelligence'),
    SubSection(text: 'Definition and importance of Knowledge, and learning.'),

SectionHeader(text: 'Problem solving (4 hrs)'),
    SubSection(text: 'Defining problems as a state space search'),
    SubSection(text: 'Problem formulation'),
    SubSection(text: 'Problem types, Well-defined problems, Constraint satisfaction problem'),
    SubSection(text: 'Game playing, Production systems.'),

SectionHeader(text: 'Search techniques (5 hrs)'),
    SubSection(text: 'Uninformed search techniques - depth first search, breadth first search, depth limit search, and search strategy comparison'),
    SubSection(text: 'Informed search techniques - hill climbing, best first search, greedy search, A* search Adversarial search techniques - minimax procedure, alpha beta procedure'),

SectionHeader(text: 'Knowledge representation, inference and reasoning (8 hrs)'),
    SubSection(text: 'Formal logic - connectives, truth tables, syntax, semantics, tautology, validity, well-formed-formula'),
    SubSection(text: 'Propositional logic, predicate logic, FOPL, interpretation, quantification, horn clauses'),
    SubSection(text: 'Rules of inference, unification, resolution refutation system (RRS), answer extraction from RRS, rule based deduction system'),
    SubSection(text: 'Statistical Reasoning - Probability and Bayes\' theorem and causal networks, reasoning in belief network'),

SectionHeader(text: 'Structured knowledge representation (4 hrs)'),
    SubSection(text: 'Representations and Mappings'),
    SubSection(text: 'Approaches to Knowledge Representation'),
    SubSection(text: 'Issues in Knowledge Representation'),
    SubSection(text: 'Semantic nets, frames'),
    SubSection(text: 'Conceptual dependencies and scripts'),

SectionHeader(text: 'Machine learning (6 hrs)'),
    SubSection(text: 'Concepts of learning'),
    SubSection(text: 'Learning by analogy, Inductive learning, Explanation based learning'),
    SubSection(text: 'Neural networks'),
    SubSection(text: 'Genetic algorithm'),
    SubSection(text: 'Fuzzy learning'),
    SubSection(text: 'Boltzmann Machines'),

SectionHeader(text: 'Applications of AI (14 hrs)'),
    SubSection(text: 'Neural networks'),
    SubSection(text: 'Network structure'),
    SubSection(text: 'Adaline network'),
    SubSection(text: 'Perceptron'),
    SubSection(text: 'Multilayer Perceptron, Back Propagation'),
    SubSection(text: 'Hopfield network'),
    SubSection(text: 'Kohonen network'),
    SubSection(text: 'Expert System'),
    SubSection(text: 'Architecture of an expert system'),
    SubSection(text: 'Knowledge acquisition, induction'),
    SubSection(text: 'Knowledge representation, Declarative knowledge, Procedural knowledge'),
    SubSection(text: 'Development of expert systems'),
    SubSection(text: 'Natural Language Processing and Machine Vision'),
    SubSection(text: 'Levels of analysis: Phonetic, Syntactic, Semantic, Pragmatic'),
    SubSection(text: 'Introduction to Machine Vision'),

SectionHeader(text: 'Practical:'),
    SubSection(text: 'Laboratory exercises should be conducted in either LISP or PROLOG. Laboratory exercises must cover the fundamental search techniques, simple question answering, inference and reasoning.'),

SectionHeader(text: 'References:'),
    SubSection(text: 'E. Rich and Knight, Artificial Intelligence, McGraw Hill, 2009.'),
    SubSection(text: 'D. W. Patterson, Artificial Intelligence and Expert Systems, Prentice Hall, 2010.'),
    SubSection(text: 'P. H. Winston, Artificial Intelligence, Addison Wesley, 2008.'),
    SubSection(text: 'Stuart Russel and Peter Norvig, Artificial Intelligence A Modern Approach, Pearson, 2010.')

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