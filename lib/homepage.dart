import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Demo Profile",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.messenger_outline_sharp,
                color: Colors.blue,
              ))
        ],
      ),
      backgroundColor: Color(0xFFF6F1F2),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  margin: EdgeInsets.only(right: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                    ),
                  ),
                  // child:
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Alex",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Text(
                        "Rating 28173",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SecondSection(
                  icon: Icons.person,
                  text: "Profile",
                ),
                SizedBox(
                  width: 15.0,
                ),
                SecondSection(
                  icon: Icons.payment,
                  text: "Payment",
                ),
              ],
            ),

            const SizedBox(
              height: 15.0,
            ),
            //Thrid Section
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ThirdSection(
                    text: "Partners",
                    icon: Icons.arrow_forward_ios,
                  ),
                  const Divider(
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ThirdSection(
                    text: "Qustions and Ans",
                    icon: Icons.arrow_forward_ios,
                  ),
                  const Divider(
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ThirdSection(
                    text: "Support",
                    icon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  ThirdSection(
                    text: "Access Control",
                    icon: Icons.arrow_forward_ios,
                  ),
                  const Divider(
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ThirdSection(
                    text: "Share the App",
                    icon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Sign out of the profile",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdSection extends StatelessWidget {
  IconData icon;
  String text;
  ThirdSection({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Icon(
          icon,
          size: 18.0,
        ),
      ],
    );
  }
}

class SecondSection extends StatelessWidget {
  IconData icon;
  String text;

  SecondSection({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(text),
        ],
      ),
    );
  }
}
