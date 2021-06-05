import 'package:delayed_display/delayed_display.dart';
import 'package:dokterin_aja/constants.dart';
import 'package:dokterin_aja/models/doctor.dart';
import 'package:dokterin_aja/screens/list_screen_dokter/components/card_list_dokter.dart';
import 'package:dokterin_aja/services/database_services.dart';
import 'package:dokterin_aja/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class Body extends StatefulWidget {
  final bool isKategori;
  final String kategori;
  Body({this.isKategori = false, this.kategori});
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: FutureBuilder<List<Doctor>>(
            future: widget.isKategori == false
                ? DatabaseServices.doctors()
                : DatabaseServices.doctorsKategoris(widget.kategori),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data.length == 0) {
                  return Center(
                    child: Image.asset(
                      'assets/images/Saly-1-min.png',
                      width: getPropertionateScreenWidht(400),
                    ),
                  );
                }
                return EasyRefresh(
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (_, index) {
                        Doctor doctor = snapshot.data[index];
                        return DelayedDisplay(
                          delay: Duration(milliseconds: 200),
                          child: CardListDokter(
                            img: doctor.imgUrl,
                            nama: doctor.nama,
                            profesi: doctor.profesi,
                            price: doctor.price,
                          ),
                        );
                      }),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error"),
                );
              } else {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Loading',
                        style: TextStyle(
                          color: kTitleTextColor,
                        ),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
