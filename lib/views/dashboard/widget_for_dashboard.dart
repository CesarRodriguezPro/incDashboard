import 'package:flutter/material.dart';
import '../../components/squares.dart';


class TotalCount extends StatelessWidget {
  const TotalCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SquareCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Total Employees Working', style: TextStyle(color: Colors.white),),
          SizedBox(
              height: 10
          ),
          Text(
            '114',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ],
      ),
    );
  }
}

class JobSiteWorking extends StatelessWidget {
  const JobSiteWorking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SquareCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Total Employees Working', style: TextStyle(color: Colors.white),),
          SizedBox(
              height: 10
          ),
          Text(
            '114',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ],
      ),
    );
  }
}