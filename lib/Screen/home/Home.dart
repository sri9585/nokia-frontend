import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nokia/provider/userProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Student = Provider.of<StudentProvider>(context).user;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('asset/Purple-Blue Desktop gradient.jpg'))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'asset/Nokia logo RGB-White_HR.png',
                        height: MediaQuery.of(context).size.height * 0.06,
                      )
                    ),
                    InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 10,bottom: 5
                  ),
                  child: Card(
                    color: Colors.black87,
                    child: Column(
                      children: [
                        ListtielWidget(
                          title: 'Home', 
                          value: Student.teamname,
                          optional: Icons.bookmark,
                          optionalcolor: Student.teamname == "TOM & JERRY"
                          ?Colors.red:Student.teamname == "MOTU PATLU"?Colors.amber:
                          Student.teamname == "SHIN-CHAN"?Colors.green:
                          Colors.blue
                        ),
                        ListtielWidget(
                          title: 'Nokia Id', 
                          value: Student.nokiaid
                        ),
                        ListtielWidget(
                          title: 'First Name', 
                          value: Student.firstname
                        ),
                        ListtielWidget(
                          title: 'Last Name', 
                          value: Student.lastname
                        ),
                        ListtielWidget(
                          title: 'Mentor', 
                          value: Student.mentor
                        ),
                        ListtielWidget(
                          title: 'V.Captain', 
                          value: Student.vcaptainone
                        ),
                        ListtielWidget(
                          title: 'V.Captain', 
                          value: Student.vcaptaintwo
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'asset/IMG_6821.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                )
            ],
          )
        ),
      ),
    );
  }
}

class ListtielWidget extends StatelessWidget {
  final String title;
  final IconData? optional;
  final Color? optionalcolor;
  final String value;
  const ListtielWidget({
    super.key,
    required this.title,
    required this.value,
    this.optional,
    this.optionalcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,bottom: 5),
      child: ListTile(
        leading: Text(
          '$title:',
          style: GoogleFonts.merriweather(
            color: Colors.white,
            fontSize: 25
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.merriweather(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
            ),
            Icon(
              optional,
              color: optionalcolor,
            )
          ],
        ),
      ),
    );
  }
}

/**
 * CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: const Icon(null),
              backgroundColor: Colors.transparent,
              title: Image.asset(
                'asset/Nokia logo RGB-White_HR.png',
                height: 50,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 45,
                  ),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 80
                ),
                child: Card(
                  color: Colors.black87,
                  child: Column(
                    children: [
                      ListtielWidget(
                        title: 'Home', 
                        value: Student.teamname,
                        optional: Icons.bookmark,
                        optionalcolor: Student.teamname == "TOM & JERRY"
                        ?Colors.red:Student.teamname == "MOTU PATLU"?Colors.amber:
                        Student.teamname == "SHIN-CHAN"?Colors.green:
                        Colors.blue
                      ),
                      ListtielWidget(
                        title: 'Nokia Id', 
                        value: Student.nokiaid
                      ),
                      ListtielWidget(
                        title: 'First Name', 
                        value: Student.firstname
                      ),
                      ListtielWidget(
                        title: 'Last Name', 
                        value: Student.lastname
                      ),
                      ListtielWidget(
                        title: 'Mentor', 
                        value: Student.lastname
                      ),
                      ListtielWidget(
                        title: 'V.Captain', 
                        value: Student.vcaptainone
                      ),
                      ListtielWidget(
                        title: 'V.Captain', 
                        value: Student.vcaptaintwo
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Image.asset('asset/IMG_6821.png'),
            )
          ],
        ),
 */