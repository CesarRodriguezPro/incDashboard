import 'dart:developer';
import 'package:dashboard/views/dashboard/widget_for_dashboard.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Certify Payroll'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('General System Errors'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('No Lunch Errors'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Driver Hours Mover'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Text Message System'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('close'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
      ),
      appBar: AppBar(title: const Text('Dashboard'),),
      body: const Center(
        child: CurrentStatus(),
      ),
    );
  }
}

class CurrentStatus extends StatelessWidget {
  const CurrentStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        FirstRow()
      ],
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TotalCount(),
        JobSiteWorking(),

      ],
    );
  }
}






