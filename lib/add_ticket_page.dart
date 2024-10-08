import 'package:flutter/material.dart';
import 'dagupan_cubao.dart';  // Import the Cubao-Dagupan toggle
import 'custom_ticket.dart'; // Import the CustomTicket
import 'edit_delete_buttons.dart'; // Import the EditDeleteButtons
import 'add_button_box.dart'; // Import the AddButtonBox
import 'home_button_bar.dart'; // Import the HomeButtonBar (new widget)

class AddTicketPage extends StatefulWidget {
  @override
  _AddTicketPageState createState() => _AddTicketPageState();
}

class _AddTicketPageState extends State<AddTicketPage> {
  void _editTicket() {
    // Add your edit logic here
    print("Edit button pressed");
  }

  void _deleteTicket() {
    // Add your delete logic here
    print("Delete button pressed");
  }

  void _addTicket() {
    // Add your add logic here
    print("Add button pressed");
  }

  void _onHomePressed() {
    // Home button action
    print("Home button pressed");
  }

  void _onAddPressed() {
    // Add button action
    print("Add button pressed");
  }

  void _onListPressed() {
    // List button action
    print("List button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/Screenshot 2024-10-04 220021.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Page content
          Column(
            children: [
              // Logo Image
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset(
                  'lib/1.png',
                  height: 80,
                ),
              ),
              SizedBox(height: 20),
              // Add the Cubao-Dagupan toggle
              DagupanCubao(),

              SizedBox(height: 20),

              // CustomTicket Widget
              CustomTicket(
                height: 180, // Adjust height for the ticket layout
                width: 450,  // Adjust width for the ticket layout
              ),

              SizedBox(height: 20),

              // Edit and Delete buttons
              EditDeleteButtons(
                onEdit: _editTicket,
                onDelete: _deleteTicket,
              ),

              SizedBox(height: 20),

              // Add Button Box
              AddButtonBox(
                onAdd: _addTicket,
              ),

              SizedBox(height: 20),

              // Spacer to push the HomeButtonBar to the bottom
              Spacer(),

              // Home Button Bar
              HomeButtonBar(
                onHomePressed: _onHomePressed,
                onAddPressed: _onAddPressed,
                onListPressed: _onListPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
