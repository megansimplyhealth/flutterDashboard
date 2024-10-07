import 'package:flutter/material.dart';
import 'package:flutter_dashboard/Components/header.dart';
import 'package:flutter_dashboard/Components/labelDropDown.dart';

enum patientDropDownLabel {
    p1('P1', 'address'),
    p2('P2', 'address'),
    p3('P3', 'address');

    const patientDropDownLabel(this.label, this.address);
    final String label;
    final String address;
}

enum resourcesDropDownLabel {
    p1('r1', 'address'),
    p2('r2', 'address'),
    p3('r3', 'address'),
    p4('r4', 'address');

    const resourcesDropDownLabel(this.label, this.address);
    final String label;
    final String address;
}

enum thirdDropDownLabel {
    p1('t1', 'address'),
    p2('t2', 'address');

    const thirdDropDownLabel(this.label, this.address);
    final String label;
    final String address;
}

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 150.0,
              color: Colors.green,
              alignment: Alignment.center,
              child: Header(isVisible: true),
            ),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 30.0,
                      alignment: Alignment.center,
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        SizedBox(child: LabelDropDown(label: 'Home', items: const [])),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Patients', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],)),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Income & Finance', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],)),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Buisness & Marketing', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],)),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Practice Management', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],)),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Regulations & Compliance', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],)),
                        const SizedBox(width: 10.0, child: VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            )),
                        SizedBox(child: LabelDropDown(label: 'Resources', items: [
                            DropdownItem(label: 'P1', address: 'Patient Address 1'),
                            DropdownItem(label: 'P2', address: 'Patient Address 2'),
                            DropdownItem(label: 'P3', address: 'Patient Address 3'),
                        ],))
                      ],)
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 650.0,
                      color: Colors.blue,
                      padding: EdgeInsets.all(20), // Padding around the grid
            child: Center(child:
            GridView.count(
              crossAxisCount: 3, // 3 columns
              mainAxisSpacing: 20, // Space between rows
              crossAxisSpacing: 20, // Space between columns
              childAspectRatio: 2.5, // Rectangle aspect ratio (width to height ratio)
              children: List.generate(6, (index) {
                return ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text('Button ${index + 1}'),
                );
              }),
            ),
                    ),)
                  ],
                ),
              ),
            ),

            //Footer Container
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 100.0,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("Footer"),
            ),
          ],
        ),
      ),
    );
  }
}