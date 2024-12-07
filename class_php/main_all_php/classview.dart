
import 'package:demax_exe_n1/class_php/myvar.dart';
// import 'package:demax_exe_n1/class_php/sec_data/sec_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
// 
//  methita autsa 1641010541136
// 


class Classview extends StatefulWidget {
  const Classview({super.key});

  @override
  State<Classview> createState() => _HomePageState();
}

class _HomePageState extends State<Classview> {
  List<dynamic> data = [];
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    getDat(); 
  }

  Future<void> getDat() async {
    setState(() {
      isLoading = true; 
    });

    try {
      final response = await http.get(
        Uri.parse("http://172.21.12.62/mobileapp/showmobiledb.php"),
        headers: {
          "Accept": "application/json",
        },
      );

      if (response.statusCode == 200) {
        setState(() {
          data = jsonDecode(response.body);
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
          errorMessage = 'FAILED TO DATA: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        isLoading = false; 
        errorMessage = 'Error occurred: $e'; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("DATA "),
          backgroundColor: Colors.red[300],
          actions: [
            
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  
                }),
          ]),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
              ? Center(child: Text(errorMessage))
              : data.isEmpty
                  ? const Center(child: Text("No data available"))
                  : ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        String employeeid =
                            data[index]['employee_id'] ?? "No ID";
                        String firstname =
                            data[index]['first_name'] ?? "No first_name";
                        String lastname =
                            data[index]['last_name'] ?? "No last_name";
                        String fullname = '$employeeid $firstname $lastname';

                        return Card(
                            margin: const EdgeInsets.all(8),
                            color: Colors.red[100],
                            child: Padding(
                              padding: const EdgeInsets.all(18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    fullname,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {
                                          id_em = employeeid;
                                          first_name = firstname;
                                          last_name = lastname;
                                          Navigator.pushNamed(
                                            context,
                                            '/up_data',
                                          );
                                        },
                                      ),
                                      //____________________________/----------------------------
                                      IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          id_em = employeeid;
                                          Navigator.pushNamed(
                                            context,
                                            '/deldata',
                                          );
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ));
                      },
                    ),
      backgroundColor: Colors.red[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            first_name = "";
            last_name = "";
            Navigator.pushNamed(context, '/insdata');
          });
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
