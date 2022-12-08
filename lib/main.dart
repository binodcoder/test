import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: showBody(),
    ));
  }

  Widget showBody() {
    List<Widget> body = <Widget>[];
    Map newMap = groupBy(map['data'], (Map obj) => obj['doctorName']);
    newMap.forEach((key, value) {
      int engage = 0, checkout = 0;
      body.add(Text(
        '$key',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));

      value.forEach((element) {
        body.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text((value.indexOf(element) + 1).toString()),
            Text(element['dueAmount'].toString()),
          ],
        ));

        if (element['appointmentEngagedTime'] != '') {
          engage++;
        }
        if (element['appointmentCheckoutTime'] != '') {
          checkout++;
        }
      });

      body.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'engage:  $engage',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'checkout:  $checkout',
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ));

      body.add(const SizedBox(
        height: 10,
      ));
    });

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: body),
    );
  }
}

void main() {
  runApp(const App());
  // Map newMap = groupBy(map['data'], (Map obj) => obj['doctorName']);

  // newMap.forEach((key, value) {
  //   int engage = 0, checkout = 0;
  //   log(key.toString(), name: 'doctor');

  //   value.forEach((element) {
  //     if (element['appointmentEngagedTime'] != '') {
  //       engage++;
  //     }
  //     if (element['appointmentCheckoutTime'] != '') {
  //       checkout++;
  //     }
  //   });
  //   log(engage.toString(), name: 'engage');
  //   log(checkout.toString(), name: 'checkout');
  // });

  // Map newMap = groupBy(map['data'], (Map obj) => obj['branchName']);
  // newMap.forEach((key, value) {
  //   Map newnewMap = groupBy(newMap[key], (Map obj) => obj['doctorName']);
  //   newnewMap.forEach((key, value) {
  //     value.forEach((element) {
  //       print(element['dueAmount']);
  //     });
  //   });
  // });
}

Map<String, dynamic> map = {
  "success": true,
  "responseType": 6,
  "message": "success",
  "data": [
    {
      "doctorName": "Dr. A",
      "branchName": "Kathmandu",
      "dueAmount": 250.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. A",
      "branchName": "Kathmandu",
      "dueAmount": 251.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. A",
      "branchName": "Pokhara",
      "dueAmount": 252.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "",
    },
    {
      "doctorName": "Dr. A",
      "branchName": "Pokhara",
      "dueAmount": 253.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "",
    },
    {
      "doctorName": "Dr. B",
      "branchName": "Kathmandu",
      "dueAmount": 254.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. B",
      "branchName": "Kathmandu",
      "dueAmount": 255.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. B",
      "branchName": "Pokhara",
      "dueAmount": 256.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. A",
      "branchName": "Pokhara",
      "dueAmount": 257.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. C",
      "branchName": "Pokhara",
      "dueAmount": 258.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "",
    },
    {
      "doctorName": "Dr. C",
      "branchName": "Pokhara",
      "dueAmount": 259.00,
      "appointmentEngagedTime": "10:08 AM",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. C",
      "branchName": "Kathmandu",
      "dueAmount": 260.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "10:08 AM",
    },
    {
      "doctorName": "Dr. C",
      "branchName": "Kathmandu",
      "dueAmount": 261.00,
      "appointmentEngagedTime": "",
      "appointmentCheckoutTime": "10:08 AM",
    }
  ]
};
