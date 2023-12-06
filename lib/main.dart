import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double scrnHeight = MediaQuery.of(context).size.height;
    double scrnWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.red,
          )
        ],
        title: const Text(
          "Home HealthCare",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: scrnHeight * 0.3,
              width: double.infinity,
              child: Image.asset('name'),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('What type of service do you want'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: scrnWidth * 0.25,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red, // Red color for the border
                      width: 2.0, // Width of the border
                    ),
                  ), // Your content goes here
                  alignment: Alignment.center,
                  child: const Text('Short Term'),
                ),
                Container(
                  width: scrnWidth * 0.25,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red, // Red color for the border
                      width: 2.0, // Width of the border
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text('Long Term'), // Your content goes here
                ),
                Container(
                  width: scrnWidth * 0.25,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red, // Red color for the border
                      width: 2.0, // Width of the border
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                      'Transitional Visit'), // Your content goes here
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Services WE Offer"),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            //********************************************************************* */
            //********************************************************************* */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('your_image.png'),
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('General Care'),
                ),
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('your_image.png'), // Re
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('Covid Care'),
                ),
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('your_image.png'), // Re
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('Elder Care'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/your_image.png'), // Re
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('ICU or home'),
                ),
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/your_image.png'), // Re
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('Vaccination'),
                ),
                Container(
                  height: 150,
                  width: scrnWidth * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/your_image.png'), // Re
                      fit: BoxFit.cover, // You can
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: const Text('Diagnosis'),
                ),
              ],
            )
            //
            ,
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.red, // Red color for the main border
                  width: 2, // Width of the main border
                ),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey, // C
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for staff',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //**************************************************************** */
            //**************************************************************** */
            //
            Card(
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 80, // Adjust the width of the image container
                      height: 80, // Adjust the height of the image container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage('your_image.png'),
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Your text goes here', // Replace with your text
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Staff Near You"),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            //************************************************ */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: scrnWidth * 0.4,
                  child: Card(
                    elevation: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          title: Text('Your Title'),
                          subtitle: Text('Subtitle '),
                          leading: Icon(Icons.info),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button action here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.red, // Red color for the button
                              elevation: 5,
                            ),
                            child: const Text('Red Button'),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: scrnWidth * 0.4,
                  child: Card(
                    elevation: 8,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ListTile(
                          title: Text('Your Title'),
                          subtitle: Text('Subtitle mation'),
                          leading: Icon(Icons.info),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your button action here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.red, // Red color for the button
                              elevation: 5,
                            ),
                            child: const Text('Red Button'),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Articles"),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 200,
                  width: scrnWidth * 0.4,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: double.maxFinite,
                        child: Image.asset('***'),
                      ),
                      const Row(
                        children: [
                          Text('Sports Article'),
                        ],
                      ),
                      const Text('Serum Ipsumsjdfsfdsjfsdjfsdkjfkjkdskfsdkf'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: scrnWidth * 0.4,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: double.maxFinite,
                        child: Image.asset('***'),
                      ),
                      const Row(
                        children: [
                          Text('Nutrition'),
                        ],
                      ),
                      const Text('Serum Ipsumsjdfsfdsjfsdjfsdkjfkjkdskfsdkf'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
