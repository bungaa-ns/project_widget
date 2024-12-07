import 'package:flutter/material.dart';

class JobApplicationFormWidget extends StatefulWidget {
  @override
  _JobApplicationFormWidgetState createState() => _JobApplicationFormWidgetState();
}

class _JobApplicationFormWidgetState extends State<JobApplicationFormWidget> {
  // Form Controllers
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateAvailableController = TextEditingController();

  // Job Position Dropdown
  List<String> _jobPositions = ['Software Engineer', 'Product Manager', 'Designer', 'Sales Representative', 'Marketing Specialist'];
  String? _selectedJobPosition;

  // Employment Type Switch
  bool _isFullTime = true;

  // Experience Radio
  String _experienceLevel = 'Entry Level';

  // Relocation Checkbox
  bool _willingToRelocate = false;

  // Date of Availability
  DateTime? _selectedDate;

  // Show BottomSheet for Additional Information
  void _showAdditionalInfoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Additional Information', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('Please prepare your resume and portfolio for further review.'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context), 
                child: Text('Close')
              )
            ],
          ),
        );
      }
    );
  }

  // Show Application Submitted Dialog
  void _showApplicationSubmittedDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Application Submitted'),
          content: Text('Thank you for your application. We will review your submission and contact you soon.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('OK')
            )
          ],
        );
      }
    );
  }

  // Show SnackBar for Form Validation
  void _showValidationSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Please fill in all required fields'))
    );
  }

  // Date Picker for Availability
  Future<void> _selectAvailableDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateAvailableController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Application Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Full Name TextField
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),

            // Email TextField
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),

            // Phone TextField
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 16),

            // Job Position Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Desired Job Position',
                border: OutlineInputBorder(),
              ),
              value: _selectedJobPosition,
              items: _jobPositions
                  .map((position) => DropdownMenuItem(
                        value: position,
                        child: Text(position),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedJobPosition = value;
                });
              },
            ),
            SizedBox(height: 16),

            // Employment Type Switch
            Row(
              children: [
                Text('Full-Time Employment'),
                Switch(
                  value: _isFullTime,
                  onChanged: (value) {
                    setState(() {
                      _isFullTime = value;
                    });
                  },
                ),
                Text(_isFullTime ? 'Full-Time' : 'Part-Time'),
              ],
            ),
            SizedBox(height: 16),

            // Experience Level Radio
            Text('Experience Level', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Radio(
                  value: 'Entry Level',
                  groupValue: _experienceLevel,
                  onChanged: (value) {
                    setState(() {
                      _experienceLevel = value.toString();
                    });
                  },
                ),
                Text('Entry Level'),
                Radio(
                  value: 'Mid Level',
                  groupValue: _experienceLevel,
                  onChanged: (value) {
                    setState(() {
                      _experienceLevel = value.toString();
                    });
                  },
                ),
                Text('Mid Level'),
              ],
            ),
            SizedBox(height: 16),

            // Relocation Checkbox
            Row(
              children: [
                Checkbox(
                  value: _willingToRelocate,
                  onChanged: (value) {
                    setState(() {
                      _willingToRelocate = value!;
                    });
                  },
                ),
                Text('Willing to Relocate'),
              ],
            ),
            SizedBox(height: 16),

            // Date of Availability
            TextField(
              controller: _dateAvailableController,
              decoration: InputDecoration(
                labelText: 'Date Available to Start',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () => _selectAvailableDate(context),
                ),
              ),
              readOnly: true,
            ),
            SizedBox(height: 16),

            // Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Additional Info Button
                ElevatedButton(
                  onPressed: () => _showAdditionalInfoBottomSheet(context),
                  child: Text('Additional Info'),
                ),

                // Submit Application Button
                ElevatedButton(
                  onPressed: () {
                    // Basic form validation
                    if (_fullNameController.text.isEmpty || 
                        _emailController.text.isEmpty || 
                        _phoneController.text.isEmpty || 
                        _selectedJobPosition == null) {
                      _showValidationSnackBar(context);
                    } else {
                      _showApplicationSubmittedDialog(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text('Submit Application'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: JobApplicationFormWidget(),
  ));
}