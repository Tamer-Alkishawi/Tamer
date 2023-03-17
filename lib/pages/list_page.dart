import 'package:anas/pages/car_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  List<Car> _car = Car.generateCar(3, 22, 2222, 'kia', options.PANORAMA);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.teal.shade500,
          ),
          onPressed: () => Navigator.pushNamed(context, '/home_page'),
        ),
        title: Text(
          'List Page',
          style: GoogleFonts.cairo(
            fontWeight: FontWeight.bold,
            color: Colors.teal.shade500,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: widget._car.length,
          itemExtent: 120,
          itemBuilder: _listItemBuilder,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF694D),
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, '/add_page'),
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    Car car = widget._car[index];
    return Dismissible(
      key: UniqueKey(),
      child: getCarCard(car, context),
    );
  }

  getCarCard(Car car, BuildContext context) {
    return GestureDetector(
      onLongPress: () => Navigator.pushNamed(context, '/edit_page'),
      child: Card(
        color: Colors.teal.shade500,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.type,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900, fontSize: 22),
              ),
              Text(
                'price:             ${car.price}   \$',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'options:        ${car.option}',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
