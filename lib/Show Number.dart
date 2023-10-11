import 'package:flutter/material.dart';

class elevated extends StatefulWidget {
  const elevated({super.key});

  @override
  State<elevated> createState() => _elevatedState();
}

class _elevatedState extends State<elevated> {
  final c = TextEditingController();
  final d = TextEditingController();
  final b = TextEditingController();
  final e = TextEditingController();
  final f = TextEditingController();
  List s = [];

  int findMin() {
    return s.reduce((first, next) => first < next ? first : next);
  }

  int findmax() {
    return s.reduce((current, next) => current > next ? current : next);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: c,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    s.add(int.parse(c.text));
                  });
                },
                child: Text('ok')),
          ),
          Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(border: Border.all()),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: s.length,
                itemBuilder: (context, index) {
                  return Text(s[index].toString());
                }),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: d,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                findMin();

                d.text = findMin().toString();
              },
              child: Text('min')),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: b,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                findmax();

                b.text = findmax().toString();
              },
              child: Text('max')),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: e,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                s.sort((a, b) => a.compareTo(b));
                e.text = s.toString();
              },
              child: Text('Ascending')),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: f,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                s.sort((a, b) => b.compareTo(a));
                f.text = s.toString();
              },
              child: Text('Decending')),
        ],
      ),
    );
  }
}
