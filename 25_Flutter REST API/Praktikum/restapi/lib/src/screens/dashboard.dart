import 'package:flutter/material.dart';

import 'package:restapi/src/utils/request_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  RequestData reqData = RequestData();
  String datas = '';

  // text Controller
  final name = TextEditingController();
  final job = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: name,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
              ),
              TextField(
                controller: job,
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  label: Text('Job'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () async {
                            final data = await reqData.getData();

                            datas = data.toString();
                            setState(() {});
                          },
                          child: const Text('GET'))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () async {
                            final data = await reqData.addUser(
                                name: name.text, job: job.text);

                            datas = data.toString();
                            setState(() {});
                          },
                          child: const Text('POST'))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () async {
                            final data = await reqData.editUser(
                                name: name.text, job: job.text);

                            datas = data.toString();
                            setState(() {});
                          },
                          child: const Text('PUT'))),
                  SizedBox(
                      width: 85,
                      child: ElevatedButton(
                          onPressed: () async {
                            final data = await reqData.deleteUser();

                            datas = data.toString();
                            setState(() {});
                          },
                          child: const Text('DELETE'))),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: const Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: Text(datas.toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
