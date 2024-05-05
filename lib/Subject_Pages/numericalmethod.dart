import 'package:flutter/material.dart';
import 'package:ioe/constants.dart';
import 'package:ioe/screens/components/insidebuttons.dart';
import 'package:ioe/screens/components/pdfviewfunction.dart';
import 'package:ioe/screens/components/syllabuscontent.dart';

class NumericalMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Numerical Method',
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
                      child: Center(child: Text('9')),
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
                      child: Center(child: Text('4')),
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
         SectionHeader(text: 'Introduction, Approximation and errors of computation(4 hours)'),
    SubSection(text: 'Introduction, Importance of Numerical Methods'),
    SubSection(text: 'Approximation and Errors in computation'),
    SubSection(text: "Taylor's series"),
    SubSection(text: "Newton's Finite differences (forward, Backward, central difference, divided difference)"),
    SubSection(text: 'Difference operators, shift operators, differential operators'),
    SubSection(text: 'Uses and Importance of Computer programming in Numerical Methods.'),

SectionHeader(text: 'Solutions of Nonlinear Equations(5 hours)'),
    SubSection(text: 'Bisection Method'),
    SubSection(text: 'Newton Raphson method(Two equation solution)'),
    SubSection(text: 'Regula-Falsi Method, Secant method'),
    SubSection(text: 'Fixed point iteration method'),
    SubSection(text: 'Rate of Convergence and comparisons of these Methods'),

SectionHeader(text: 'Solution of system of linear algebraic equations(8 hours)'),
    SubSection(text: 'Gauss elimination method with pivoting strategies'),
    SubSection(text: 'Gauss-Jordan method'),
    SubSection(text: 'LU Factorization'),
    SubSection(text: 'Iterative methods (Jacobi method, Gauss-Seidel method)'),
    SubSection(text: 'Eigen value and Eigen vector using Power method'),

SectionHeader(text: 'Interpolation(8 hours)'),
    SubSection(text: "Newton's Interpolation(forward, backward)"),
    SubSection(text: 'Central difference interpolation: Stirling\'s Formula, Bessel\'s Formula'),
    SubSection(text: 'Lagrange interpolation'),
    SubSection(text: 'Least square method of fitting linear and nonlinear curve for discrete data and continuous function'),
    SubSection(text: 'Spline Interpolation(Cubic Spline)'),

SectionHeader(text: 'Numerical Differentiation and Integration(6 hours)'),
    SubSection(text: 'Numerical Differentiation formulae'),
    SubSection(text: 'Maxima and minima'),
    SubSection(text: 'Newton-Cote general quadrature formula'),
    SubSection(text: 'Trapezoidal, Simpson\'s 1/3, 3/8 rule'),
    SubSection(text: 'Romberg integration'),
    SubSection(text: 'Gaussian integration( Gaussian–Legendre Formula 2 point and 3 point)'),

SectionHeader(text: 'Solution of ordinary differential equations(6 hours)'),
    SubSection(text: "Euler's and modified Euler's method"),
    SubSection(text: 'Runge Kutta methods for 1st and 2nd order ordinary differential equations'),
    SubSection(text: 'Solution of boundary value problem by finite difference method and shooting method.'),

SectionHeader(text: 'Numerical solution of Partial differential Equation(8 hours)'),
    SubSection(text: 'Classification of partial differential equation(Elliptic, parabolic, and Hyperbolic)'),
    SubSection(text: 'Solution of Laplace equation(standard five point formula with iterative method)'),
    SubSection(text: 'Solution of Poisson equation(finite difference approximation)'),
    SubSection(text: 'Solution of Elliptic equation by Relaxation Method'),
    SubSection(text: 'Solution of one dimensional Heat equation by Schmidt method'),
    SubSection(text: 'Practical:'),
    SubSection(text: 'Algorithm and program development in C programming language of following:'),
    SubSection(text: 'Generate difference table.'),
    SubSection(text: 'At least two from Bisection method, Newton Raphson method, Secant method'),
    SubSection(text: 'At least one from Gauss elimination method or Gauss Jordan method. Finding largest Eigen value and corresponding vector by Power method.'),
    SubSection(text: 'Lagrange interpolation. Curve fitting by Least square method.'),
    SubSection(text: "Differentiation by Newton's finite difference method. Integration using Simpson's 3/8 rule"),
    SubSection(text: 'Solution of 1st order differential equation using RK-4 method'),
    SubSection(text: 'Partial differential equation (Laplace equation)'),
    SubSection(text: 'Numerical solutions using Matlab.'),

SectionHeader(text: 'References:'),
    SubSection(text: 'Dr. B.S.Grewal, " Numerical Methods in Engineering and Science ", Khanna Publication, 7th edition.'),
    SubSection(text: 'Robert J schilling, Sandra l harries , " Applied Numerical Methods for Engineers using MATLAB and C.", 3rd edition Thomson Brooks/cole.'),
    SubSection(text: 'Richard L. Burden, J.Douglas Faires, "Numerical Analysis 7th edition" , Thomson / Brooks/cole'),
    SubSection(text: 'John. H. Mathews, Kurtis Fink ," Numerical Methods Using MATLAB 3rd edition " ,Prentice Hall publication'),
    SubSection(text: 'JAAN KIUSALAAS , " Numerical Methods in Engineering with MATLAB" , Cambridge Publication')

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