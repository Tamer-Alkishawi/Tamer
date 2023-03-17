import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

enum options { PANORAMA,CAMERA, GBS }

class _EditPageState extends State<EditPage> {
  late String id;
  late String type;
  late String price;
  String? groupValue;

  bool _panoramaValue = false;
  bool _cameraValue = false;
  bool _gpsValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.teal.shade500,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Edit',
          style: GoogleFonts.cairo(
            fontWeight: FontWeight.bold,
            color: Colors.teal.shade500,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: ListView(
          children: [
            TextField(
              style: GoogleFonts.nunito(),
              onChanged: (String value) {
                print('value $value');
                setState(() {
                  id = value;
                });
                print('id $id');
              },
              enabled: true,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFFF694D),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Year Of Release',
                hintStyle: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(
                  Icons.date_range,
                  color: Color(0xFFFF694D),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (String value) {
                print('value $value');
                setState(() {
                  type = value;
                });
                print('type: $type');
              },
              style: GoogleFonts.nunito(),
              enabled: true,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFFF694D),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Vehicle Type',
                hintStyle: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(
                  Icons.car_repair_rounded,
                  color: Color(0xFFFF694D),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: GoogleFonts.nunito(),
              onChanged: (String value) {
                print("value : $value");
                setState(() {
                  price = value;
                });
                print("price: $price");
              },
              keyboardType: TextInputType.number,
              enabled: true,
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFFFF694D),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Vehicle Price',
                hintStyle: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                hintMaxLines: 1,
                hintTextDirection: TextDirection.ltr,
                prefixIcon: const Icon(
                  Icons.monetization_on,
                  color: Color(0xFFFF694D),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Sold OR Not !',
              style:
                  GoogleFonts.cairo(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                Expanded(
                    child: RadioListTile(
                      activeColor: Color(0xFFFF694D),
                        title: Text('Sold'),
                        value: 'Sold',
                        groupValue: groupValue,
                        onChanged: (String? value) {
                          setState(() => groupValue = value);
                          print('Sold : $value');
                        })),
                Expanded(
                  child: RadioListTile(
                    activeColor: Color(0xFFFF694D),
                    title: Text('Not Sold'),
                    value: 'Not Sold',
                    groupValue: groupValue,
                    onChanged: (String? value) {
                      setState(() => groupValue = value);
                      print('Not Sold : $value');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Other Options ! ',
              style:
                  GoogleFonts.cairo(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            CheckboxListTile(
              activeColor: Color(0xFFFF694D),
              title: Text(
                options.PANORAMA.name,
                style: GoogleFonts.cairo(),
              ),
              value: _panoramaValue,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() => _panoramaValue = value);
                }
              },
            ),
            CheckboxListTile(
              activeColor: Color(0xFFFF694D),
              title: Text(
                options.CAMERA.name,
                style: GoogleFonts.cairo(),
              ),
              value: _cameraValue,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() => _cameraValue = value);
                }
              },
            ),
            CheckboxListTile(
              activeColor: Color(0xFFFF694D),
              title: Text(
                options.GBS.name,
                style: GoogleFonts.cairo(),
              ),
              value: _gpsValue,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() => _gpsValue = value);
                }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                primary: const Color(0xFFFF694D),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/list_page',
                    arguments: {
                      'id': id,
                      'type': type,
                      'price': price,
                      'groupValue': groupValue,
                    });
              },
              child: Text(
                'SAVE',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
